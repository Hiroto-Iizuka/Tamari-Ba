# config valid for current version and patch releases of Capistrano
lock "~> 3.16.0"

set :application, "tamari_ba"
set :repo_url, "git@github.com:Hiroto-Iizuka/Tamari-Ba.git"
set :rbenv_ruby, File.read('.ruby-version').strip
# set :branch, ENV['BRANCH'] || "main"
set :branch, "main"

# Nginxの設定ファイル名と置き場所を修正
set :nginx_config_name, "#{fetch(:application)}.conf"
set :nginx_sites_enabled_path, "/etc/nginx/conf.d"

append :linked_files, ".env"
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "node_modules"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
# set :keep_releases, 5

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure
