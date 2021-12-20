#!/bin/sh

get_latest_release() {
  curl --silent "https://api.github.com/repos/git/git/tags" | jq -r '.[0].name' | sed -e 's/^v//g'
}

GIT_VERSION=$(get_latest_release)

wget https://mirrors.edge.kernel.org/pub/software/scm/git/git-${GIT_VERSION}.tar.gz

tar zxvf git-${GIT_VERSION}.tar.gz

cd git-${GIT_VERSION}

./configure --prefix=${PREFIX_DIRECTORY}
make all
make install
