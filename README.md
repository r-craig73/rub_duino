## Capstone project: rub_duino

##### by Ron Craig (ron.craig@comcast.net ∙ https://github.com/r-craig73 ∙ https://linkedin.com/in/craigronald)

#### GitHub repository: https://github.com/r-craig73/rub_duino

### Description
#### An application combining Arduino HW & Ruby on Rails to let a user interact with a sensor.

###  Minimum Viable Product (MVP) User Stories
- [ ] As a user, I want to turn on a LED light.
- [ ] As a user, I want to turn off a LED light.
- [ ] As a user, I want to control the LED light color.



### Instructions (assuming Mac OS)
* Clone repository and move to the home repository folder `Computer:travel_api user$`.
* Run `$ gem install rails`.
* Verify that you are using ruby-2.4.1 in your terminal(s).
* Run `$ bundle install` to install Ruby gems packages related to the Gemfile in the top level.
* Rspec setup (Unit Testing and Models): In the terminal, run the following command `$ bundle exec rails generate rspec:install`. Files will be generated in the spec folder. In the home repository folder run `$ rspec` to view tests passing or failing.
* Database setup: Run `$ rake db:create` to generate a database. Run `$ rails generate migration action_name` generate a migration file for table manipulation. After generating the necessary tables, run `$ rake db:migrate` to prepare the database. Run `$ rake db:test:prepare` to create the Active Record schema.rb file. To run a seed to populate a database, run `$ rake db:seed`.
* Rails server: Run `$ rails server` to start the Rails server. Navigate to `http://localhost:3000`. Refresh the page to reload any changes to the source files.

#### Sources
* Interfacing Arduino and Ruby: https://playground.arduino.cc/Interfacing/Ruby
* Dreaming echoes
