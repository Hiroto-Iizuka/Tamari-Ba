cd /var/www/Tamari-Ba/ && git pull
bundle install
RAILS_ENV=production bundle exec rake assets:precompile
sudo -s && systemctl restart puma