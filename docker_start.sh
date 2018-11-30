#!/bin/bash -e
if [ "$TASK" = "worker" ];
then
  bundle exec rake jobs:work;
else
  bundle exec rake plugins:install client:build
  bundle exec puma -C config/puma.rb;
fi
