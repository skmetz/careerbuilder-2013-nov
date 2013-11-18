# CareerBuilder November 2013

Test suites for Object-Oriented Design class.

## Setup

This is a sanity test to make sure that you have a working ruby environment with all the necessary dependencies.

1. Clone the repository.
2. `cd careerbuilder-2013-nov`
3. `bundle install`
4. `ruby test/hello_test.rb` **or** `rake test` **or** `rake`

The Hello test should be failing, with an error message something like this:

```bash
/ruby/lib/ruby/1.9.1/rubygems/custom_require.rb:36:in `require': cannot load such file -- ./lib/hello.rb (LoadError)
	from /opt/rubies/ruby-1.9.3-p392/lib/ruby/1.9.1/rubygems/custom_require.rb:36:in `require'
	from test/hello_test.rb:4:in `<main>'
```

Should you feel compelled to make the test pass, we will not stand in your way.

## Hints

To run just a single test, do this:

```bash
ruby test/house_test.rb --name=test_horse_and_hound_and_horn
```
