# File

```
version: "3.8"
services:
    <containerName1>:
        image: "<imageName>"
        build: <dockerFilepath>
        container_name: "<containerName>"
        build:
            context: <pathInrespectToWhichDocekrFileCommandsToRun>
            dockerfile: <dockerFileName>
            args:
                some-arg: some-value
        ports:
            - <hostSystemPort>:<containerPort>
        volumes:
            - <namedVolumeName>: <pathInContainer>
            - <hostMachineBindPath>: <pathInContainer>
            - <anonymousVolumePathInContainer>
        environment:
            # syntax 1
            <envVarName1>: <value1>
            <envVarName2>: <value2>
            # syntax 2
            - <envVarName1>=<val1>
            - <envVarName2>=<val2>
        # Either declare environment variables in the environment section or use an env_file 
        env_file:
            - <envFilePath>
        # By default all services in a compose file are connected to a default network.
        # We can override this behavior by explicitly declaring networks to connect to.
        networks:
            - <networkName>
        # equivalent to -it
        stdin_open: true
        tty: true
        depends_on:
            - <otherContainerName>

# Specify only named volumes
volumes:
    <namedVolumeName>:
```

# Commands

## Compose Up

```
docker-compose up
```

### Arguments
`-d`: Detached mode: Run containers in the background

`--build`: Build images before starting containers

## Compose Down

```
docker-compose down
```

### Arguments
`-v`: Remove named volumes declared in the "volumes" section of the Compose file and anonymous volumes attached to containers

## Compose Build
Build or rebuild services
```
docker-compose build
```