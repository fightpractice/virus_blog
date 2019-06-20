desc "db create database"
task :create_database do
  on roles(:db) do
    within release_path do
      with rails_env: fetch(:rails_env) do
        execute :rake, 'db:create'
      end
    end
  end
end