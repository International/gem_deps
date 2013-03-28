module GemDeps
  class Railtie < Rails::Railtie
    rake_tasks do
      puts "Loading gem_deps"
      load "tasks/gem_deps.rake"
    end
  end
end
