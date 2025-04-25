# docker-playground

Docker is super nifty! It is a **software containerization platform** that makes it easy to build, test, ship, and deploy applications.

_For example, you can create a super cool application on your own machine and if I want to run it too then we can use Docker to help. 
You can package your app, upload it to a private registry, and then I can download it and run the exact same application on my computer 
without any compatibility issues! It's like a portable box bundled with everything needed to run your cool application._

## Install Docker
1) Download Docker from: https://docs.docker.com/get-started/get-docker/


2) Once it finishes, open the "Docker Desktop" app to start the Docker engine


3) Open terminal and confirm you have it installed by running the command: `docker --version`
    * You should see an output like: `Docker version 26.1.1, build 4cf5afa`

Now that you have Docker up and running, you can interact with it in 2 ways: docker compose or Dockerfile

### Docker Compose
A command-line tool that lets you run multiple Docker containers.

4) Execute the sample `docker-compose.yml` file in this directory by running the command: `docker compose up`
    * You should see the output: `Hello Mai from your docker-compose.yml file!`
    * The docker compose file uses a slim Python image to print some texts to standard output (aka the terminal)


5) Stop and remove the container with the command: `docker compose down`


### Dockerfile
A script file that builds a single Docker container image.


4) Build the Docker image by executing the command: `docker build -t hello-docker .`
    * The `-t` flag tags the image with the name "hello-docker"
    * The `.` (dot) tells Docker to look for the Dockerfile in the current directory


5) Confirm the image was successfully created with the command: `docker images`
    * Look for the image tagged "hello-docker"
    * FYI: The image is stored locally on your machine in Docker's internal image storage


6) Run the Docker container with your new image with: `docker run hello-docker`
    * You should see the outpupt: `Hello Mai from Dockerfile!`


7) Stop and remove the container with the command: `docker compose down`


Other useful docker commands:
* `docker info` to list useful info like the numbers of running, paused, stopped containers and images
* `docker ps -a` to list all existing containers, their IDs, their statuses, etc.
* `docker images` to list all the active images
* `docker logs <CONTAINER_ID>` to show the logs of a container
* `docker stop <CONTAINER_ID>` to stop the container
* `docker rmi <IMG_ID>` to remove the downloaded Docker image
* `docker image prune` to remove dangling images not tagged and referenced by a container 
* `docker container prune` to remove all stopped containers
* `docker system prune` to remove all danging images, stopped container, unused networks and caches
