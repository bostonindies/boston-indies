FROM ubuntu

WORKDIR /srv/jekyll

RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    nodejs \
    libssl-dev \
    zlib1g-dev \
    ruby-full

RUN gem install jekyll \
    base64 \
    csv \
    json \
    webrick \
    sass-embedded \
    rexml \
    bigdecimal \
    rake

EXPOSE 4000

CMD ["jekyll", "serve", "--host", "0.0.0.0", "--incremental", "--livereload", "--drafts"]
