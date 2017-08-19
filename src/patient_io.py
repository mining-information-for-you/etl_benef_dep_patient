from pyspark.sql import Row


class patient_io():

    def __init__(self):
        self.df_benef = None
        self.df_depend = None

    def benef_csv2Dataframe(self,sc,csvfile):
        csv_RDD = sc.textFile(csvfile)
        header = csv_RDD.first() #extract header
        csv_RDD = csv_RDD.filter(lambda x:x !=header).map(lambda line: line)
        csv_RDD = csv_RDD.map(lambda line: line.split(";") )
        csv_RDD = csv_RDD.map(lambda p: Row(COD_BEN=str(p[0]), DTNASC=str(p[1]), SEXO=str(p[2]), CIDADE=str(p[3]), ESTADO=str(p[4]), COR=str(p[5]), TP_SANGUE=str(p[6]) ) )
        self.df_benef = csv_RDD.toDF()

    def get_dataframe_benef(self):
        return self.df_benef

    def depend_csv2Dataframe(self,sc,csvfile):
        csv_RDD = sc.textFile(csvfile)
        header = csv_RDD.first() #extract header
        csv_RDD = csv_RDD.filter(lambda x:x !=header).map(lambda line: line)
        csv_RDD = csv_RDD.map(lambda line: line.split(";") )
        csv_RDD = csv_RDD.map(lambda p: Row(COD_BEN=str(p[0]), DTNASC=str(p[1]), SEXO=str(p[2]), CIDADE=str(p[3]), ESTADO=str(p[4]), COR=str(p[5]), TP_SANGUE=str(p[6]), is_benef=str("0") ) )
        self.df_depend = csv_RDD.toDF()

    def get_dataframe_depend(self):
        return self.df_depend
