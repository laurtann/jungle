# Jungle

A mini e-commerce application built with Rails 4.2 built during week 9 of Lighthouse Labs Web Development Bootcamp.

Users can
- create aan account
- log in
- add items to their cart
- delete items from their cart
- checkout using stripe

Admins can
- create product categories
- add products to their store
- remove products from their store


## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe

## Screenshots

![Jungle Home View](https://github.com/laurtann/jungle/blob/master/docs/jungle-home-view.png?raw=true)

![Jungle Checkout Stripe View](https://github.com/laurtann/jungle/blob/master/docs/jungle-checkout-view.png?raw=true)

![Jungle Order Confirmation View](https://github.com/laurtann/jungle/blob/master/docs/jungle-order-confirm-view.png?raw=true)

![Jungle Admin Products View](https://github.com/laurtann/jungle/blob/master/docs/jungle-admin-products-view.png?raw=true)
