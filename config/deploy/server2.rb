# server-based syntax
# ======================
# Defines a single server with a list of roles and multiple properties.
# You can define all roles on a single server, or split them:

# server "example.com", user: "deploy", roles: %w{app db web}, my_property: :my_value
# server "example.com", user: "deploy", roles: %w{app web}, other_property: :other_value
# server "db.example.com", user: "deploy", roles: %w{db}

server "139.59.185.228", user: "root", roles: %w{app}

# set :default_env, lambda {
#   {
#     'TIMESTAMP' => release_timestamp,
#   }
# }

# set :image, -> { "eu.gcr.io/ng-docker-registry/newslyst:#{release_timestamp}" }
# set :dockerfile, -> { 'docker/Dockerfile.staging' }
# set :project, -> { "#{fetch(:application)}-#{fetch(:stage)}" }

namespace :deploy do
  after :finishing, :notify do
    on roles(:app) do
      within release_path do
        ## deploy stack
        execute :"docker-compose", "up -f docker-compose-server2.yml"
      end
    end
  end
end

# Custom SSH Options
# ==================
# You may pass any option but keep in mind that net/ssh understands a
# limited set of options, consult the Net::SSH documentation.
# http://net-ssh.github.io/net-ssh/classes/Net/SSH.html#method-c-start
#
# Global options
# --------------
#  set :ssh_options, {
#    keys: %w(/home/rlisowski/.ssh/id_rsa),
#    forward_agent: false,
#    auth_methods: %w(password)
#  }
#
# The server-based syntax can be used to override options:
# ------------------------------------
# server "example.com",
#   user: "user_name",
#   roles: %w{web app},
#   ssh_options: {
#     user: "user_name", # overrides user setting above
#     keys: %w(/home/user_name/.ssh/id_rsa),
#     forward_agent: false,
#     auth_methods: %w(publickey password)
#     # password: "please use keys"
#   }
