# RSpec for Ops Examples

This repo contains some example specs reference in my *RSpec for Ops* blog post.

## Running the Tests

To run these tests you'll need `ruby` and `bundler` installed. You should install the dependencies by running `bundle install` inside the root of this repository. After you've installed the dependencies you can run the tests by running the `spec` Rake task with `bundle exec rake spec`.

```
git clone https://github.com/danzilio/rspec_for_ops
cd rspec_for_ops
bundle install
bundle exec rake spec
```

The `bundle exec rake spec` command will run all tests in the `spec` directory of this repository. If you'd like to run a specific test, you can use the `bundle exec rspec` command with the path to the test you'd like to run as an argument:

```
bundle exec rspec spec/hash_spec.rb     # run the examples in spec/hash_spec.rb
```
