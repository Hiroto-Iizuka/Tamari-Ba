cd /var/www/Tamari-Ba/ && git pull && /home/ec2-user/.rbenv/versions/2.7.2/bin/bundle install
RAILS_ENV=production bundle exec rake assets:precompile
