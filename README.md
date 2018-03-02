# Empire Kicks

## March 2, 2018

#### By John Rykken

#### Basic app written with Ruby, Sinatra, ActiveRecord, PostgreSQL, HTML, and CSS. It allows users to list faux shoe stores and shoe brands in a database, then pair stores with brands (and vice versa) via a SQL join table. The project aims to demonstrate many-to-many relationships.   

![view 1](https://imgur.com/a/HnJeb)

## Setup and Installation

#### Live application unavailable.

<!--

www.example/heroku/github/not-a-real.url.com -->

#### To Install Locally

Clone to your desktop. Using the terminal, navigate to Empire Kick's root directory and recreate the database with these commands. (This works only if Ruby and PostgreSQL are installed on your machine.)

* _`$ createdb [empire_kicks]`_

* _`$ psql [empire_kicks] < my_database.sql`_

* _`$ createdb -T [empire_kicks] [empire_kicks_test]`_

* _`$ ruby app.rb`_

* Navigate to your browser and type 'localhost:4567' in the address bar.

## Testing

In the root directory, run

* _`$ bundle exec rspec`_

## Specifications

* View, add, update and delete stores.
* View, add, and delete brands.
* View store detail page. Add brands to store. View all brands carried by that store.
* View brand detail page. See stores that carry that particular brand.   

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
