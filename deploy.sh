cd /var/www/Tamari-Ba/ && git pull
/Users/hiroto/.rbenv/versions/2.7.2/bin/bundle install
RAILS_ENV=production bundle exec rake assets:precompile
sudo -s && systemctl restart puma