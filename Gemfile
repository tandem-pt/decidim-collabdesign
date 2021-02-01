# frozen_string_literal: true

source "https://rubygems.org"

ruby RUBY_VERSION
gem 'decidim', git: 'https://git.octree.ch/decidim/decidim.git', branch: 'octree/development'
gem 'decidim-conferences', git: 'https://git.octree.ch/decidim/decidim.git', branch: 'octree/development'
gem 'decidim-consultations', git: 'https://git.octree.ch/decidim/decidim.git', branch: 'octree/development'
gem 'decidim-elections', git: 'https://git.octree.ch/decidim/decidim.git', branch: 'octree/development'
gem 'decidim-initiatives', git: 'https://git.octree.ch/decidim/decidim.git', branch: 'octree/development'
gem 'decidim-templates', git: 'https://git.octree.ch/decidim/decidim.git', branch: 'octree/development'


gem "bootsnap", "~> 1.4"

gem "puma", ">= 4.3.5"
gem "uglifier", "~> 4.1"

gem "faker", "~> 1.9"

group :development, :test do
  gem "byebug", "~> 11.0", platform: :mri
  
  # Use latest simplecov from master until next version of simplecov is
  # released (greather than 0.18.5)
  # See https://github.com/decidim/decidim/issues/6230
  gem "simplecov", "~> 0.19.0"

  gem "decidim-dev", git: 'https://git.octree.ch/decidim/decidim.git', branch: 'octree/development'
end

group :development do
  gem "letter_opener_web", "~> 1.3"
  gem "listen", "~> 3.1"
  gem "spring", "~> 2.0"
  gem "spring-watcher-listen", "~> 2.0"
  gem "web-console", "~> 3.5"
end
