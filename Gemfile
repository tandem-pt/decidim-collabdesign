# frozen_string_literal: true

source "https://rubygems.org"

ruby RUBY_VERSION
gem 'decidim', git: 'https://git.octree.ch/decidim/decidim.git', branch: ENV.fetch("DECIDIM_GIT_BRANCH", 'octree/0.23-stable')
gem 'decidim-conferences', git: 'https://git.octree.ch/decidim/decidim.git', branch: ENV.fetch("DECIDIM_GIT_BRANCH", 'octree/0.23-stable')
gem 'decidim-consultations', git: 'https://git.octree.ch/decidim/decidim.git', branch: ENV.fetch("DECIDIM_GIT_BRANCH", 'octree/0.23-stable')
gem 'decidim-elections', git: 'https://git.octree.ch/decidim/decidim.git', branch: ENV.fetch("DECIDIM_GIT_BRANCH", 'octree/0.23-stable')
gem 'decidim-initiatives', git: 'https://git.octree.ch/decidim/decidim.git', branch: ENV.fetch("DECIDIM_GIT_BRANCH", 'octree/0.23-stable')
gem 'decidim-templates', git: 'https://git.octree.ch/decidim/decidim.git', branch: ENV.fetch("DECIDIM_GIT_BRANCH", 'octree/0.23-stable')
gem "decidim-term_customizer", git: 'https://github.com/mainio/decidim-module-term_customizer', branch: 'develop'
gem "decidim-direct_verifications"

gem 'carrierwave-aws'
gem "bootsnap", "~> 1.4"
gem 'omniauth_openid_connect'

gem "puma", ">= 4.3.5"
gem "uglifier", "~> 4.1"
gem 'sidekiq'
gem 'activerecord-session_store'

gem 'redis'
gem 'hiredis'

gem "faker", "~> 1.9"

group :development, :test do
  gem "byebug", "~> 11.0", platform: :mri
  
  # Use latest simplecov from master until next version of simplecov is
  # released (greather than 0.18.5)
  # See https://github.com/decidim/decidim/issues/6230
  gem "simplecov", "~> 0.19.0"

  gem "decidim-dev", git: 'https://git.octree.ch/decidim/decidim.git', branch: 'octree/0.23-stable'
end

group :development do
  gem "letter_opener_web", "~> 1.3"
  gem "listen", "~> 3.1"
  gem "spring", "~> 2.0"
  gem "spring-watcher-listen", "~> 2.0"
  gem "web-console", "~> 3.5"
end
