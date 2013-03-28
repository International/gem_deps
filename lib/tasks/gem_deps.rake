namespace :gem_deps do
  desc "View all installed gems for an environment"
  task :list_gems => :environment do

    group = if var_env = ENV["FOR_ENV"]
              var_env
            elsif defined?(Rails)
              Rails.env
            else
              :default
            end

    group = group.to_sym
    searched_groups = [group, :default].uniq

    deps = Bundler.environment.dependencies.select do |dep| 
      searched_groups.any? {|e| dep.groups.include?(e) } 
    end

    puts "Gems included by the bundle in group #{group}:"
    deps.each do |dep|
      spec = dep.to_spec
      puts "* #{spec.name} (#{spec.version})"
    end
  end
end

