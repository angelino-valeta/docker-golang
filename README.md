# docker-golang-ping

A simple Go server/microservice example for [Docker's Go Language Guide](https://docs.docker.com/language/golang/).

Notable feature:

* Includes a [multi-stage `Dockerfile`](https://github.com/olliefr/docker-gs-ping/blob/main/Dockerfile.multistage).
* Has a CI pipeline using GitHub Actions to run tests.
* Has a CD pipeline using GitHub Actions to publish to Docker Hub