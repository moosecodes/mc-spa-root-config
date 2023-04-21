#!/bin/bash

echo "---> ROOT CONFIG" && echo "" && cd /var/www/mc-spa-root-config && pwd && git pull && npm ci && npm run build && mv ./dist/* ../html && cp ./importmap.json ../html && cp ./deploy.sh /var/www
echo "---> STYLEGUIDE" && echo "" && cd /var/www/html/mc-styleguide && pwd && git pull && npm ci && npm run build
echo "---> NEWS UI" && echo "" && cd /var/www/html/mc-news-ui && pwd && git pull && npm ci && npm run build
echo "---> PRIMARY NAV UI" && echo "" && cd /var/www/html/mc-primary-nav-ui && pwd && git pull && npm ci && npm run build
echo "--> MOVIES UI" && echo "" && cd /var/www/html/mc-movies-ui && pwd && git pull && npm ci && npm run build
