#!/bin/sh
# Start Docker daemon in background
dockerd --host=unix:///var/run/docker.sock &

# Wait for Docker daemon to be ready
while(! docker info > /dev/null 2>&1 ); do
  sleep 1
done

# Then start Jenkins
exec /sbin/tini -- /usr/local/bin/jenkins.sh
