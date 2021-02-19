# EndothelialAtlasDocker
Docker container for EndothelialAtlas analysis

## Quick start

Start with 
```
docker run -e PASSWORD=ludwig -p 8787:8787 ludwigg/ecatlas:latest
```

to pull and run the EC Atlas container with RStudio and various dependencies
already installed.

Once your container is running, you can open 

http://localhost:8787/ 

in your browser and log in to the RStudio session with

username: rstudio
pwd: ludwig

## More background

Here's a docker container for the Endothelial Atlas project
that wraps around the various R package dependencies to make
life / setup a bit easier and to move developments over to a
reproducible environment.

This github repo contains instructions on how to build the docker container in
the `Dockerfile`.
The built is automatically triggered via a push to the repo and 
[GitHub actions](https://github.com/features/actions).
The resulting container is then available from 
[Docker Hub](https://hub.docker.com/repository/docker/ludwigg/ecatlas).

Even more background: https://www.bioconductor.org/help/docker/; 
see especially the quick start section.
