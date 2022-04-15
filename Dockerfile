FROM jekyll/jekyll:3.8.4

COPY Gemfile Gemfile.lock /srv/jekyll/

WORKDIR /srv/jekyll/

RUN bundle install
