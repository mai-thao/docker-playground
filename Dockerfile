# Learn more about Dockerfile: https://docs.docker.com/build/concepts/dockerfile/
from python:3.13.3-slim

# CMD tells Docker to run Python with a simple print command
# -c tells Python to execute the next string as Python code (not treat it as a file)
CMD ["python", "-c", "print('Hello Mai from Dockerfile!')"]
