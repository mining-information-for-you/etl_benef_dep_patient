CREATE KEYSPACE data_lake WITH REPLICATION = { 'class' : 'SimpleStrategy', 'replication_factor' : 3 };

USE data_lake;
