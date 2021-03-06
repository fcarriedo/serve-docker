# serve-docker

The repository that builds a very minimal docker container (~9MB) for file serving.

Note: Intended for `localhost` use as no `https` is supported.

This images is based on [alpine](https://hub.docker.com/_/alpine) and
[serve](https://github.com/fcarriedo/serve) to achieve its minimal size.

## Publishing the image on docker hub

Build the image and tag it:

    $ docker build . -t fcarriedo/serve:v1.1

Setup the user ID used to log into docker hub:

    $ export DOCKER_ID_USER="username"

Make sure docker logs into the registry:

    $ docker login

Push the image into docker hub:

    $ docker push fcarriedo/serve:v1.1

Check that the image you just pushed appears in docker hub.

## Usage

Users extending from this image will simply need:

### To Use:

Your `Dockerfile` (assuming your static content lives under the `static`
directory when building):

```
FROM fcarriedo/serve:v1.1

COPY static /html
```

### To build

    $ docker build . -t yourimagename

### To run

    $ docker run -it -p 8086:80 yourimagename

### To access

Your browser to:

    http://[host]:8086/myfile.html
