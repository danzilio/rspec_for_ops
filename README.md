# RSpec for Ops Examples

This repo contains some example specs reference in my *RSpec for Ops* blog post.

## Running the RSpec-only Examples

To run these tests you'll need `ruby` and `bundler` installed. You should install the dependencies by running `bundle install` inside the root of this repository. After you've installed the dependencies you can run the tests by running the `blog_examples` Rake task with `bundle exec rake blog_examples`.

```
git clone https://github.com/danzilio/rspec_for_ops
cd rspec_for_ops
bundle install
bundle exec rake blog_examples
```

The `bundle exec rake blog\_examples` command will run all tests in the `spec/blog\_examples` directory of this repository. If you'd like to run a specific test, you can use the `bundle exec rspec` command with the path to the test you'd like to run as an argument:

```
bundle exec rspec spec/blog_examples/hash_spec.rb     # run the examples in spec/blog_examples/hash_spec.rb
```
