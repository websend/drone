version=$1

export CGO_ENABLED=0

go build -tags "nolimit" -o release/linux/amd64/drone-server github.com/drone/drone/cmd/drone-server
docker build --rm -f docker/Dockerfile.server.linux.amd64 -t websend/drone:$version .
docker push websend/drone:$version
