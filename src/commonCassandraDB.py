from connectionCassandraDB import Connection, create_connection

class CommonCassandraDB():

	def __init__(self):
		self.client = None

	def set_cassandra_client(self, nodeIP, keyspaceName):
		self.client = create_connection(nodeIP, keyspaceName)

	def close_connection(self):
		self.client.close()
