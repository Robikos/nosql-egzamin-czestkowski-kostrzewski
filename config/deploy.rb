# config valid for current version and patch releases of Capistrano
lock "~> 3.10.2"

set :application, "ProjectExam"
set :repo_url, "git@github.com:Robikos/nosql-egzamin-czestkowski-kostrzewski.git"

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, "/root/project-exam/"

# Default value for :linked_files is []
# append :linked_files, "config/database.yml"

# Default value for linked_dirs is []
# append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure
