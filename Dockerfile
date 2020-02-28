FROM ruby:2.6.5-alpine
ENV VERSION="v0.1.0" \
    INFO="Truemail lightweight rack based web API 🚀" \
    APP_USER="truemail" \
    APP_HOME="/var/lib/truemail-rack" \
    TMP="/var/lib/truemail-rack/tmp" \
    APP_PORT="9292"
LABEL version=$VERSION
LABEL description=$INFO
MAINTAINER admin@bestweb.com.ua
RUN apk add --no-cache bash && \
    adduser -D $APP_USER
RUN apk add --virtual build-dependencies git && \
    git clone https://github.com/truemail-rb/truemail-rack.git $TMP -q && \
    cd $TMP && git checkout $VERSION -q && \
    mv app config config.ru .ruby-version Gemfile Gemfile.lock $APP_HOME && \
    rm -rf $TMP && chown -R $APP_USER:$APP_USER $APP_HOME && \
    apk del build-dependencies
WORKDIR $APP_HOME
RUN gem i bundler -v $(tail -1 Gemfile.lock | tr -d ' ')
RUN apk add --virtual build-dependencies make cmake g++ && \
    bundle check || bundle install --system --without=test development && \
    apk del build-dependencies
USER $APP_USER
EXPOSE $APP_PORT
CMD echo $INFO && thin -R config.ru -a 0.0.0.0 -p $APP_PORT start
