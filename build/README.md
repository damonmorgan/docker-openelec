# Docker image for building OpenELEC.tv

This docker image builds OpenELEC.tv

## Usage

```
docker run damonmorgan/openelec-build
```

This will copy the build to /builds
You will probably want to make that a persistent volume (recommended):

```
docker run -v /you/openelec/builds:/builds damonmorgan/openelec-build
```

This will store the builds in /you/openelec/builds on the host.

If you want to reuse the same build settings, you can create your container with a name and start whenever you want:

```
docker create --name openelec-build damonmorgan/openelec-build
docker start openelec-build
```

## Build configuration
You can customize the build options for the openelec-build image by passing in any of the following environment variables

PROJECT (default=Generic)
ARCH (default=x86_64)
BRANCH (default=master)

```
docker run --name openelec-6-wetek-core -e PROJECT=WeTek_Core -e ARCH=arm -e BRANCH=openelec-6.0 -v /you/openelec/wetek-core/6.0/builds:/builds damonmorgan/openelec-build
```
