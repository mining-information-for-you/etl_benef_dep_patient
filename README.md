# ETL Benef_Dep_Patient
This project belongs to sao-francisco-data-lake project. It is concerned about storing patient data into Cassandra Database from benefits and dependents that are sent by either csv or json files

# Apache Spark
This project requires Apache Spark 2.0 or higher. See http://spark.apache.org/downloads.html

# Cassandra DB
This project requires Apache Cassandra 3.0 or higher. See https://cassandra.apache.org/
MAC OS
cqlsh 127.0.0.1 9042
LINUX OS
cqlsh 127.0.0.1

# How to install spark-cassandra-connector
1. conda install -c conda-forge cassandra-driver
2.0
2.1 git clone https://github.com/datastax/spark-cassandra-connector.git
2.2 cd spark-cassandra-connector
2.3 sbt/sbt -Dscala-2.11=true assembly

# How to run
# ETL Benefits
 /Users/rodrigo/programs/spark-2.2.0-bin-hadoop2.7/bin/spark-submit --jars /Users/rodrigo/programs/spark-cassandra-connector/spark-cassandra-connector/target/full/scala-2.11/spark-cassandra-connector-assembly-2.0.3-53-g7bddee2b.jar src/main_benef.py config.json
