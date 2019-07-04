#!/bin/sh

mix deps.get \
      && mix deps.compile \
      && cd assets \
      && npm install \
      && node node_modules/webpack/bin/webpack.js --mode development \
      && cd .. \
