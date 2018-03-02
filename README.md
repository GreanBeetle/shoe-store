# Volunteer Tracker

#### _Simple app to tracks projects and assign volunteers_

#### _**John Rykken**_

![view 1](https://i.imgur.com/3bnIbdd.png)

## Setup/Installation Requirements

#### You can view the app live by visiting: (currently unavailable)

_https://enigmatic-sierra-89342.herokuapp.com/_

#### Or to deploy on local machine:

Clone to your local machine. In terminal, navigate to the root directory of the project
Recreate the database by using the following commands in terminal:

* _`$ createdb [volunteer_tracker]`_

* _`$ psql [volunteer_tracker] < my_database.sql`_

* _`$ createdb -T [volunteer_tracker] [volunteer_tracker_test]`_

Use this command in terminal to run app on the localhost:

* _`$ ruby app.rb`_

## Running tests

This app includes unit and integration testing using RSpec.
Run `bundle exec rspec` in terminal to test.

## Specifications (use case scenarios)

* User can view, add, update and delete projects.
* User can add volunteers to the project
* User can view volunteers for the project
* User can edit and delete volunteers for the project


## Built With

* Ruby
* Sinatra
* PostgreSQL
* ActiveRecord
* HTML
* CSS

## Screenshots

![view 2](https://imgur.com/a/Rx1ww)

## Authors

**John Rykken**

## Contact

_john.rykken@gmail.com_

## License

Licensed under the MIT License.

  <!-- ## Acknowledgments -->

Copyright (c) 2018 **_John Rykken_**
