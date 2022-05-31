#!/usr/bin/env sh
# releasing to fury

set -e -x

FURY_USERNAME=${1:-"b-yond-infinity-jenkins"}
FURY_TOKEN=${2:-$FURY_TOKEN}
PACKAGE_NAME=${3:-"kedro_mlflow"}
TAG=${4:-$TAG}

BASEDIR=$(dirname "$0")

cd $BASEDIR/../dist &&
curl -F package=@${PACKAGE_NAME}-${TAG}-py3-none-any.whl https://${FURY_TOKEN}@push.fury.io/${FURY_USERNAME}