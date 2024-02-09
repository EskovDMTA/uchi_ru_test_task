#!/bin/bash
set -e

if [ -f /myapp/tmp/pids/server.pid ]; then
  rm /myapp/tmp/pids/server.pid
fi

bundle exec rake db:setup
exec bundle exec rails s -b 0.0.0.0
