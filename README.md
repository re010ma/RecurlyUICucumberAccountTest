**What do these tests do?**
---------------------------
These tests log into the Recurly App, navigate to the Account Summary page and
confirm that the correct number of accounts are being displayed in specific
Recurly sandbox accounts.

**How do I run these tests?**
------------------------------
1. Get **ruby** from https://www.ruby-lang.org/en/downloads/
2. Get **bundler** by typing this on your CLI: `gem install bundler`
3. cd to the root directory of this project
4. type `bundle install`
5. Finally, type `bundle exec cucumber features/ -f pretty`

**Other Stuff**
---------------
These tests use cucumber, capybara and rspec to do their work.
There are a couple of unused files in the `features/support` folder.
1. `env.rb`- By default, these tests run in Firefox. The `env.rb` file would
be used in expanding testing to other browsers (Chrome, IE, etc.)
2. `modules/responsive_helper.rb`- This file would be used in testing the
responsive design of the web site.