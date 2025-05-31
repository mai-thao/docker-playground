# docker-playground

Docker is super nifty! It is a **software containerization platform** that makes it easy to build, test, ship, and deploy applications.

_For example, you can create a super cool application on your own machine and if I want to run it too then we can use Docker to help. 
You can package your app, upload it to a private registry, and then I can download it and run the exact same application on my computer 
without any compatibility issues! It's like a portable box bundled with everything needed to run your cool application._

## Install Docker
*Kep in mind that these instructions are for Mac - Apple Silicon.*

1) Download Docker from: https://docs.docker.com/get-started/get-docker/
   * This will include all tools needed! Like the Docker Desktop GUI itself, Docker CLI, Docker Compose, Docker Daemon, Docker Engine, etc. so you don't have to manually do so.


3) Once it finishes, open the "Docker Desktop" app to start the Docker engine


4) Open terminal and confirm you have it installed
    * Run the command: `$ docker --version`. You should see an output like: `Docker version 26.1.1, build 4cf5afa`
    * Also run the command: `$ docker ps -a`. You should see a table with different columns describing container info (there should be none if this is your first time)
    * If you get an error like `zsh: command not found: docker` then you need to set your PATH environment variable with the command: `$ export PATH="$PATH:/Applications/Docker.app/Contents/Resources/bin/"` or manually do so in Docker Desktop app > Settings > General > Configure shell completions > and toggle the "Automatically" option

Now that you have Docker up and running, you can interact with it in 2 ways: docker compose or Dockerfile

### Docker Compose
A command-line tool that lets you define and run multiple Docker containers using a YAML file.

_With docker compose, gone are the days where you have to manually install or run services needed by an app. You also don't worry about version mismatch between your local version and the app's expected version. Compose will install the correct and expected version every time from the YAML file. It also removes the "it runs on my machine" dilemma because everyone can run the same app consistently._

4) Execute the sample `docker-compose.yml` file in this directory by running the command: `$ docker compose up`
    * You should see the output: `Hello Mai from your docker-compose.yml file!`
    * The docker compose file uses a slim Python image to print some texts to standard output (aka the terminal)


5) Stop and remove the container with the command: `$ docker compose down`

### Dockerfile
A script file that builds a single Docker container image. 

_It essentially turns your app, dependencies, and configurations into a portable, reusable image that can be run on any environment (MacOS, Windows, Linux, etc.) with Docker._

4) Build the Docker image by executing the command: `$ docker build -t hello-docker .`
    * The `-t` flag tags the image with the name "hello-docker"
    * The `.` (dot) tells Docker to look for the Dockerfile in the current directory


5) Confirm the image was successfully created with the command: `$ docker images`
    * Look for the image tagged "hello-docker"
    * FYI: The image is stored locally on your machine in Docker's internal image storage


6) Run the Docker container with your new image with: `$ docker run hello-docker`
    * You should see the outpupt: `Hello Mai from Dockerfile!`


7) Stop and remove the container with the command: `$ docker compose down`

## Docker Images
Docker images are the **backbone** of Docker. Each image is a snapshot of an app and contains everything it needs to create and run a container. You can find public images on Docker Hub or store private ones in your own registry or a cloud provider's registry (like Artifactory).

#### Find Images
Docker images can be found in the Docker Hub registry at: https://hub.docker.com/search?type=image

#### Download a Local Copy
You can download a Docker image from Docker Hub with the command: `$ docker pull <image-name>:<tag>`.
   * If you omit the tag then it pulls the "latest" version by default.

You can then inspect the image to see info about its configuration, environment variables, and history with the command: `$ docker inspect <image-name>:<tag>`

#### Remove Images
Docker images can get huge! You can delete unused, outdated images with the command: `$ docker rmi <IMG_ID>` 
   * Find the IMG_ID by executing the command: `$ docker images`

## Useful Docker Commands
There are so much useful commands to learn, here are some prominent ones.


* `$ docker info` to list useful info like the numbers of running, paused, stopped containers and images
* `$ docker ps -a` to list all existing containers, their IDs, their statuses, etc.
* `$ docker images` to list all the active images
* `$ docker logs <CONTAINER_ID>` to show the logs of a container
* `$ docker stop <CONTAINER_ID>` to stop the container
* `$ docker rmi <IMG_ID>` to remove the downloaded Docker image
* `$ docker image prune` to remove dangling images not tagged and referenced by a container 
* `$ docker container prune` to remove all stopped containers
* `$ docker system prune` to remove all danging images, stopped container, unused networks and caches

... and so much! See the Docker CLI Cheat Sheet for more: https://docs.docker.com/get-started/docker_cheatsheet.pdf
