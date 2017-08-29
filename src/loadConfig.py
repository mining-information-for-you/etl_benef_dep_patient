import json
import os

def load_config(configFile):
    with open(configFile) as json_file:
        data = json.load(json_file)
    return data

def load_source_files(sc, source_files):
    sc.addPyFile(os.path.join(source_files,"commonCassandraDB.py"))
    sc.addPyFile(os.path.join(source_files,"connectionCassandraDB.py"))
    sc.addPyFile(os.path.join(source_files,"loadConfig.py"))
    sc.addPyFile(os.path.join(source_files,"patient_io.py"))
    sc.addPyFile(os.path.join(source_files,"patient.py"))
    return sc
