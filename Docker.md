# File

`FROM` - Base image to use. Format `FROM <imageName>`

`WORKDIR` - Set current working directory for following commands to execute in. If directory not exists the it is created. Format `WORKDIR <path>`

`COPY` - Copy files from host into the image. Format `COPY <hostPath> <imagePath>`

`RUN` - Runs command. Format `RUN <command>`

`EXPOSE` - Expose the port from image. Format `EXPOSE <portNumber>`

`CMD` - Specify command which is executed when container is started. Format `CMD ["command", "arg1", ...]`

`ENV` - Set environment variable for runtime. Format `ENV <envName> <val>`


# Commands

## Build
```
Docker build -t <imageTag> --build-arg <varName=val> <dockerFilePath>
```
### Arguments
`-t` - Image tag. Format `-t imageName:version`, if no version given then `latest` is taken by default

`--build-arg`- Build argument. Format `--build-arg <argName>=<val>`. If passed this value would be taken otherwise would consider value given in docker file.

## Run

```
Docker run <imageTag>
```

### Arguments

`--name` - Name for a container. Format `--name <name>`

`-p` - Host to container port mapping. Format `-p <hostPort>:<containerPort>`

`-d` - Run container in a detached shell mode.

`--rm` - Remove container when it is stopped.

`--env` - Environment variables. Format `--env <envVar>=<val>`

`--env-file` - Pass file containing all env variables. Format `--env-file <filepath>`

`--it` - Some apps which are not servers needs interactive terminal like calc app so we need to keep terminal running.

## Volumes

**Named Volume** -  Storage created on system that can be reused multiple times when container runs. Format `-v <volumeName>:<pathInsideContainer>`

**Bind Mount** - Map a path on system to the container which can be accessed by container at runtime and can also be access fro outside container. Format `-v <pathOnsystem>:<pathInsideContainer>`

**Readonly Volume** - Mention a bind mount path inside the container which would be readonly and cannot be overridden. Format `-v <bindMount>:ro`

**Anonymous Volume** - Mention a path which we don't want **Bind Mount** to override and use the data which is in the container, for eg. `node_modules`. Format `-v <pathInsideContainer>`

## Network

Containers can communicate with each other but mentioning one of the below things in URL in code

`host.docker.internal` is special address used in docker that docker uses to access the host machine. At runtime docker resolves it with the IP address of the host machine.

`IP address` - we can get IP address of the container by running `docker inspect <containerID/containerName>` OR `docker container inspect <containerID/containerName>` command

`Container Name` - We can directly communicate with other container by directly mentioning the container name in URL. For eg. `<containerName><restOfTheUrl>`

**Create Network** - `docker network create <networkName>`

**Run Container In Network** - `docker run -d --rm --name <containerName> --network <networkName> <imageName>`

## Miscellaneous

**Stop Container** - `docker stop <containerName/ContainerID>`

**Attach Shell** - `docker exec -it <containerName/ContainerID> bash`

**Push Image** - `docker push <repoName>:<imageVersion>`. Default `latest` if version is not provided.

**Pull Image** - `docker pull <repoName>:<imageVersion>`. Default `latest` if version is not provided.

**View Logs** - `docker logs <containerName/ContainerID>`

**Follow Logs** - `docker logs -f <containerName/ContainerID>`

**Copy Inside Container**  - `docker cp <pathOnHostSystem> <containerName/ContainerID>:<pathInsideContainer>`

**Copy From Container** - `docker cp <containerName/ContainerID>:<pathInsideContainer> <pathOnHostSystem>`

**Inspect Image** - `docker image inspect <imageName>:<version>`

**Remove Image** - `docker rmi <imageTag/imageID>`

**Remove Container** - `docker rm <containerName/ContainerID>`