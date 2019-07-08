# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }
gem "rspec"

# gem "rails"
Dir.glob(File.join(File.dirname(__FILE__), "../src/**/*.rb")).each { |f| require f }
