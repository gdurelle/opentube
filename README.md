[![Build Status](https://travis-ci.org/gdurelle/opentube.svg)](https://travis-ci.org/gdurelle/opentube)

# Informations

* Ruby **2.2.0**
* Rails **4.2.0**

## Install & Configuration

* <code>bundle install</code>
* <code>rake db:create</code>
* <code>rake db:migrate</code>

### How to run the test suite
  <code>guard</code>

### Run the app locally
  <code>foreman start</code>

## System dependencies
  * <code>brew install ffmpeg --with-faac</code>
  * <code>brew install ffmpegthumbnailer</code>

## Services

Job queues : sidekiq

cache servers, search engines, etc.

## Deployment instructions


# Roadmap
* Background processing videos for performances
* Fast upload UX (plupload ?)
* bootstrap or foundation ? (most accessible ? better semantic ?)
