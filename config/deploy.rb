require 'rvm/capistrano'
set :application, "VendingMachine Test"
set :repository,  "git://github.com/freddiefujiwara/tddbcsendai02-feedback-ui.git"

set :scm, :git
role :server, 'localhost'
set :deploy_to ,"/usr/share/nginx/www/tddbcsendai02.ze.gs/"
set :user, "fumikazu"
namespace :deploy do
  task :setup do
      run "source ~/.nvm/nvm.sh;nvm use v0.8.6;cd #{current_path}; make"
  end
end
after "deploy", "deploy:setup"
