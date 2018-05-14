## Capstone project: rub_duino

##### by Ron Craig (ron.craig@comcast.net ∙ https://github.com/r-craig73 ∙ https://linkedin.com/in/craigronald)

#### GitHub repository: https://github.com/r-craig73/rub_duino

### Description
#### An application combining Arduino HW & Ruby on Rails to let a user interact with a sensor (LED light).

###  Minimum Viable Product (MVP) User Stories
- [ ] As a user, I want to turn on a LED light.
- [ ] As a user, I want to turn off a LED light.
- [ ] As a user, I want to record and store time and the LED light voltage's value into a database.
- [ ] As a user, I want to record and store time and the LED light color into a database.
- [ ] As a admin, I want CURD-L capabilities for the LED light.
- [ ] As a admin, I want CURD-L capabilities for any user.

### Instructions (assuming Mac OS)
* Clone repository and move to the home repository folder `Computer:travel_api user$`.
* Run `$ gem install rails`.
* Verify that you are using ruby-2.4.1 in your terminal(s).
* Run `$ bundle install` to install Ruby gems packages related to the Gemfile in the top level.
* Rspec setup (Unit Testing and Models): In the terminal, run the following command `$ bundle exec rails generate rspec:install`. Files will be generated in the spec folder. In the home repository folder run `$ rspec` to view tests passing or failing.
* Database setup: Run `$ rake db:create` to generate a database. Run `$ rails generate migration action_name` generate a migration file for table manipulation. After generating the necessary tables, run `$ rake db:migrate` to prepare the database. Run `$ rake db:test:prepare` to create the Active Record schema.rb file. To run a seed to populate a database, run `$ rake db:seed`.
* Rails server: Run `$ rails server` to start the Rails server. Navigate to `http://localhost:3000`. Refresh the page to reload any changes to the source files.

## Technologies Used
```
Application: ruby-2.4.1, Bootstrap, HTML
Testing: Rails 5.2.0, Rspec
Environment: gems
```

#### Sources and inspiration
* _Getting Started with Arduino_ 2nd Edition by Massimo Banzi
* Interfacing Arduino and Ruby: https://playground.arduino.cc/Interfacing/Ruby
* Dreaming echoes: http://dreamingechoes.github.io/arduino/ruby/rails/physical-software-made-easy-with-arduino-and-ruby-on-rails/
* Connecting Rails and Arduino with a serial port: https://medium.com/@jaeger.rob/connecting-rails-and-arduino-with-serialport-859b8e58db39

Copyright (c) 2018 **_RC productions_**

## MIT License
-----------
Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
