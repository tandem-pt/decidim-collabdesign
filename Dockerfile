FROM git.octree.ch:4567/decidim/docker:9158829f
LABEL maintainer="hello@octree.ch"

ENV RAILS_ENV=production
ENV RAILS_SERVE_STATIC_FILES=true
ENV SECRET_KEY_BASE=no_need_for_such_secrecy
ENV TZ=Europe/Zurich

COPY Gemfile Gemfile.lock ./
ADD . .
RUN bundle install
# Install Yarn
RUN curl -o- -L https://yarnpkg.com/install.sh | bash

VOLUME /code/storage
VOLUME /code/log

ENTRYPOINT []
CMD bin/start
