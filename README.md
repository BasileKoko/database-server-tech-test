Task:

Before your interview, write a program that runs a server that is accessible on http://localhost:4000/. When your server receives a request on http://localhost:4000/set?somekey=somevalue it should store the passed key and value in memory. When it receives a request on http://localhost:4000/get?key=somekey it should return the value stored at somekey. Store the data in memory, not in a database, but bear in mind that you will later need to add a database to this code.

<a name="GEMS">Gems Used</a>

```
source "https://rubygems.org"
ruby '2.3.3'
gem 'sinatra'
gem 'rack'
gem 'rake'
gem 'rspec'
gem 'coveralls'
gem 'capybara'
gem 'selenium-webdriver'
gem 'rspec-sinatra'
gem 'shotgun'
```
Code test in PRY:

```
[Basile:...0/database-server-tech-test]$ pry                                                                 (master✱)
[1] pry(main)> require 'capybara/dsl'
=> true
[2] pry(main)> require 'selenium-webdriver'
=> true
[3] pry(main)> include Capybara::DSL
including Capybara::DSL in the global scope is not recommended!
=> Object
[4] pry(main)> Capybara.default_driver = :selenium
=> :selenium
[5] pry(main)> visit 'http://localhost:4000/set?name=user'
=> #<Selenium::WebDriver::Remote::Response:0x007fd9ecc9e820 @code=200, @payload={}>
[6] pry(main)> visit 'http://localhost:4000/get?name'
=> #<Selenium::WebDriver::Remote::Response:0x007fd9ed8cad38 @code=200, @payload={}>
[7] pry(main)>
```
