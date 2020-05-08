#!/bin/bash
set -euo pipefail

# create docker image
sudo docker build . -t docker.pkg.github.com/visitador-online/www/openvidu-call-react
# login to registry
sudo docker login docker.pkg.github.com -u "$REGISTRY_USERNAME" --password-stdin

# push to registry
sudo docker push docker.pkg.github.com/visitador-online/www/openvidu-call-react

# logout from registry
sudo docker logout docker.pkg.github.com
