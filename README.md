SpreeProductLike
================
[![Build Status](https://travis-ci.org/netguru/spree_product_like.png)](https://travis-ci.org/netguru/spree_product_like)
[![Coverage Status](https://coveralls.io/repos/netguru/spree_product_like/badge.png?branch=master)](https://coveralls.io/r/netguru/spree_product_like?branch=master)
[![Code Climate](https://codeclimate.com/github/netguru/spree_product_like.png)](https://codeclimate.com/github/netguru/spree_product_like)


Introduction goes here.

Installation
------------

Add spree_product_like to your Gemfile:

```ruby
gem 'spree_product_like'
```

Bundle your dependencies and run the installation generator:

```shell
bundle
bundle exec rails g spree_product_like:install
```

Testing
-------

Be sure to bundle your dependencies and then create a dummy test app for the specs to run against.

```shell
bundle
bundle exec rake test_app
bundle exec rspec spec
```

When testing your applications integration with this extension you may use it's factories.
Simply add this require statement to your spec_helper:

```ruby
require 'spree_product_like/factories'
```

Copyright (c) 2014 [name of extension creator], released under the New BSD License
