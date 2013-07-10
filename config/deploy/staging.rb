role :web, "88.198.226.250"
role :app, "88.198.226.250"
role :db,  "88.198.226.250", :primary => true

set :rails_env, "staging"
set :branch, "stage"

set :deploy_to, "#{base_directory}/#{application}_#{stage}"

set :keep_releases, 5

set :current_path, File.join(deploy_to, current_dir) #fix for capistrano-unicorn

after 'deploy:update_code', 'db:clone_production'
after 'db:clone_production', 'deploy:migrate'
after 'deploy:update_code', 'rsync_system'