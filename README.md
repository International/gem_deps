# GemDeps

Simple way to check the versions of gems on a specific environment. Inspired by http://stackoverflow.com/questions/15498611/how-can-i-view-all-the-gems-for-a-specific-gem-group

## Installation

Add this line to your application's Gemfile:

    gem 'gem_deps'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install gem_deps

## Usage

Run the following task to view the gems for the current environment:

    $ rake gem_deps:list_gems
    
Or run it like this to view for a specific environment:

    $ rake gem_deps:list_gems FOR_ENV=test

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
