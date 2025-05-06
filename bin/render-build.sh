#!/usr/bin/env bash
# exit on error
set -o errexit

# Build commands for back end
bundle install
bundle exec rake db:migrate
# bundle exec rake db:seed # Uncomment only for first deploy if needed
bundle exec rails assets:clean
bundle exec rails assets:precompile
