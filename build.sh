export CGO_ENABLED=0
go build -tags "nolimit" -o release/linux/drone-server github.com/drone/drone/cmd/drone-server
docker build --rm -f docker/Dockerfile.server.linux.amd64 -t websend/drone:1.7.0.1 .
docker push websend/drone:1.7.0.1

