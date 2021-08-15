cd /var/www/Tamari-Ba/ && git pull && /Users/hiroto/.rbenv/versions/2.7.2/lib/ruby/gems/2.7.2/gems/bundle install
RAILS_ENV=production bundle exec rake assets:precompile
sudo systemctl restart puma