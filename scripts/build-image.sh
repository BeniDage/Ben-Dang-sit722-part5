#
# Builds a Docker image.
#
# Environment variables:
#
#   CONTAINER_REGISTRY - The hostname of your container registry.
#   VERSION - The version number to tag the images with.
#
# Usage:
#
#       ./scripts/build-image.sh
#

set -u # or set -o nounset
: "$CONTAINER_REGISTRY"
: "$VERSION"

docker build -t $CONTAINER_REGISTRY/inventory_management:$VERSION --file ./inventory_management/Dockerfile .
docker build -t $CONTAINER_REGISTRY/book_catalog:$VERSION --file ./book_catalog/Dockerfile .

# Tag the images with 'latest'
docker tag $CONTAINER_REGISTRY/inventory_management:$VERSION $CONTAINER_REGISTRY/inventory_management:latest
docker tag $CONTAINER_REGISTRY/book_catalog:$VERSION $CONTAINER_REGISTRY/book_catalog:latest