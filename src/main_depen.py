from pyspark import SparkContext, SparkConf, SparkFiles
from pyspark.sql import SQLContext

import os, sys
from loadConfig import load_config
from patient_io import patient_io
from patient_cassandraDB import patient_cassandraDB

def main():
    #Loading config file from json
    conf_file = load_config(sys.argv[1])

    csv_file = conf_file["depend-csv"]["pathfilename"]
    keyspace = conf_file["cassandraDB"]["keyspace"]
    nodeIP = conf_file["cassandraDB"]["nodeIP"]

    sc = SparkContext()
    sql = SQLContext(sc)

    #Python files
    #sc.addPyFile(os.path.join(drugdesignCassandra_source_path,"commonFunctions.py"))

    p_cassandra = patient_cassandraDB(nodeIP, keyspace)
    p_io = patient_io()

    p_io.depend_csv2Dataframe(sc,csv_file)
    p_cassandra.insert_patient_depend(sql, p_io.get_dataframe_depend())

    p_cassandra.close_connection()


main()
