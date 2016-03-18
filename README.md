# Docker images for building OpenELEC.tv

Current Stable OpenELEC.tv (6.0.3)
```
docker run --name openelec-6 -e BRANCH=openelec-6.0 -v /you/openelec/generic/6.0/builds:/builds damonmorgan/openelec-build
```

Development Master OpenELEC.tv
```
docker run --name openelec -v /you/openelec/generic/dev/builds:/builds damonmorgan/openelec-build
```

For more configuration options see [build](https://github.com/damonmorgan/docker-openelec/tree/master/build)

## Credits
Partially forked from https://github.com/ArnaudPiroelle/docker-openelec-build
