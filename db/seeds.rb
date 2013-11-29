# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


### im gonna need the dotenv gem
### i need my freebase api to put in with dotenv
### i probably wont need to persist this to a database
### It will probably be one page that directs to a results page
### then i can refactor and use ajax to display on the same page
### if i want t get fancy i can make it link to actors and actressed
## def new will have form fields
## def indx will have results
## will need to figure out how to pass query string params over the internets
## then the index page will catch the results and print them out
## no controllers no models?
## the api model will probably live in the lib