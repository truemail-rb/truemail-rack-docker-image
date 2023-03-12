#!/bin/sh
set -e

TARGET_DOCKER_HOST=$1
TARGET_DOCKER_IMAGE=$2

get_release_candidate_tag() {
  git tag --sort=v:refname | grep -E "v[0-9]+\.[0-9]+\.[0-9]+" | tail -n 1
}

RELEASE_CANDIDATE_TAG=$(get_release_candidate_tag)

release_to_dockerhub() {
  echo "Building new image..."
  docker build -t "$TARGET_DOCKER_IMAGE:$RELEASE_CANDIDATE_TAG" -t "$TARGET_DOCKER_IMAGE:latest" .
  echo "Publishing new image to DockerHub..."
  echo "${DOCKER_TOKEN}" | docker login -u "${DOCKER_USER}" --password-stdin "$TARGET_DOCKER_HOST"
  docker push "$TARGET_DOCKER_IMAGE:$RELEASE_CANDIDATE_TAG"
  docker push "$TARGET_DOCKER_IMAGE:latest"
}

release_to_github() {
  echo "Publishing new release notes to GitHub..."
  gh release create "$RELEASE_CANDIDATE_TAG" --generate-notes
}

release_to_dockerhub
release_to_github
