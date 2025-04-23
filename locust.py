from locust import HttpUser, task, between

class LoadTest(HttpUser):
	wait_time = between(1,3)

	@task
	def index(self):
		self.client.get("/")
