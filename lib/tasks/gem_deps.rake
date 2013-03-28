namespace :gem_deps do
  desc "View all installed gems for an environment"
  task :list_gems => :environment do

    group = Rails.env

    deps = Bundler.environment.dependencies.select do |dep|
      dep.groups.include?(group) or dep.groups.include?(:default)
    end

    puts "Gems included by the bundle in group #{group}:"
    deps.each do |dep|
      spec = dep.to_spec
      puts "* #{spec.name} (#{spec.version})"
    end
  end
end

