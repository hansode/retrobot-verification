#!/bin/bash
#
# requires:
#  bash
#
set -e
set -o pipefail
set -x

function yum() {
  $(type -P yum) --disablerepo=updates "${@}"
}

# Add installation packages ...
addpkgs="
 readline-devel
 libyaml
 libyaml-devel
 openssl-devel
 zlib-devel
 libffi-devel
 unzip
"

if [[ -n "$(echo ${addpkgs})" ]]; then
  yum install -y ${addpkgs}
fi
