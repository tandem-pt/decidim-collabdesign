ARG decidim_docker_version
FROM git.octree.ch:4567/decidim/docker:$decidim_docker_version
ARG decidim_git_branch

LABEL maintainer="hello@octree.ch"
ENV RAILS_ENV=production
ENV RAILS_LOG_TO_STDOUT true
ENV RAILS_SERVE_STATIC_FILES true   
ENV TZ=Europe/Zurich
ENV DECIDIM_GIT_BRANCH=$decidim_git_branch
WORKDIR /code
RUN gem install bundler --version '>= 2.1.4' 
COPY Gemfile /code
RUN bundle install

COPY . .

VOLUME /code/storage
VOLUME /code/log

ENTRYPOINT []
CMD bin/start
