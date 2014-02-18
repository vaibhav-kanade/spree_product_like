SpreeProductLike
================
[![Build Status](https://travis-ci.org/netguru/spree_product_like.png)](https://travis-ci.org/netguru/spree_product_like)
[![Coverage Status](https://coveralls.io/repos/netguru/spree_product_like/badge.png?branch=master)](https://coveralls.io/r/netguru/spree_product_like?branch=master)
[![Code Climate](https://codeclimate.com/github/netguru/spree_product_like.png)](https://codeclimate.com/github/netguru/spree_product_like)

This extensions adds a like/fav button for products.

How it works?
-------------

As a logged in user:

  - i can go to product page and like the product 
  - see if I liked the product already
  - go to my 'favourites' products tab 

As a logged in admin i can: 

  - see list of products ordered by likes count 

Demo
----

If you want to see how it works, visit [our demo shop](https://spree-product-like.herokuapp.com).

You can login:

  * as a customer `customer@example.com` / `customer`
  * as an admin `salesman@example.com` / `salesman`

Installation
------------

Add spree_product_like to your Gemfile:

```ruby
gem 'spree_product_like', git: 'https://github.com/netguru/spree_product_like.git', branch: '2-1-stable'
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

Copyright (c) 2014 [Netguru](http://netguru.co), released under the New BSD License
