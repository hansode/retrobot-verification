#!/bin/bash
#
# requires:
#  bash
#
set -e
set -o pipefail
set -x

# Do some changes ...

user=${user:-vagrant}

su - ${user} -c "bash -ex" <<'EOS'
  if ! [[ -d ${HOME}/.rbenv ]]; then
    git clone https://github.com/sstephenson/rbenv.git ${HOME}/.rbenv
  fi
  if ! [[ -d ${HOME}/.rbenv/plugins/ruby-build ]]; then
    git clone https://github.com/sstephenson/ruby-build.git ${HOME}/.rbenv/plugins/ruby-build
  fi
EOS

su - ${user} -c "bash -ex" <<'EOS'
  echo 'export PATH="${HOME}/.rbenv/bin:$PATH"' >> ${HOME}/.bash_profile
  echo 'eval "$(rbenv init -)"' >> ${HOME}/.bash_profile
EOS

su - ${user} -c "bash -ex" <<'EOS'
  version=2.2.0

  rbenv install --list
  rbenv install ${version}
  rbenv versions

  rbenv version
  rbenv global ${version}
  rbenv version

  rbenv exec gem list
  rbenv exec gem install bundler
  rbenv exec gem list
EOS

su - ${user} -c "bash -ex" <<'EOS'
  if ! [[ -d cd retrobot ]]; then
    git clone https://github.com/mirakui/retrobot.git
  fi
  cd retrobot
  git pull

  rbenv exec bundle install
EOS
