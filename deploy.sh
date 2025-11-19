VERSION="$1"

docker build . -t sabnzbd-exporter:$VERSION --platform linux/amd64 --platform linux/arm64
docker tag sabnzbd-exporter:$VERSION registry.internal.fynnlabs.com/sabnzbd-exporter:$VERSION
docker push registry.internal.fynnlabs.com/sabnzbd-exporter:$VERSION
