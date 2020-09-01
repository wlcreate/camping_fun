## The Domain
Congratulations! You have been hired by Access Camp and for your first job, you have been tasked with building out a website to log campers with their activities.

A `camper` can participate in many `activities` and an `activity` can have many `campers` participating in it.

Visiting `/campers` will show the index page of all the campers and visiting `/activities` will go to the index page for all the `activities`.

Currently, we don't have any way to associate the two, so consider the relationship and think about how a `camper` can `signup` for an `activity`!

Camper -< Signup >- Activity

Camper has_many signups
Camper has_many activities through: :signups
Activity has_many signup
Activity has_man campers through signups
Signup belongs to Camper & Activity

The data to be saved to the database can be found in the `seeds.rb`. Use the information in there to determine how to structure your tables!

## The Deliverables

1. To log a camper with an activity, we need to store some additional information in our database. Make the necessary updates to our database, so that **a `camper` can have many `activities`** and **an `activity` can have many `campers`**. The `signup` should also include a time (as an integer) that is between 0 and 23, referring to the hour of the activity.

Signup needs the foreign keys of Camper & Activity
rails g resource Signup camper:belongs_to activity:belongs_to time:integer

2. As a user, I should be able to go to the index page of the `campers` and see the list of all the campers in my database. When I click a name, I should go to the show page for that `camper`. The show page should show the `camper's` name, their age and the list of activities that they have signed up for.

get '/campers', to: "campers#index", as: "campers" #all of the campers
get '/campers/:id', to: "campers#show", as "camper" #specific camper

3. As a user, I should be able to go to the index page of the `activities` and see the list of all the activities in my database. When I click a name, I should go to the show page for that `activity`. The show page should show the `activity's` name and its difficulty level.

get '/activities', to: "activities#index", as: "activities" #all of the activities
get '/activities/:id', to: "activities#show", as "activity" #specific activity

4. As a user, I should be able to fill out a form to create a new `signup` that will associate a `camper` with an `activity`. I should be able to choose an existing `activity`, choose an existing `camper` and add a time. Upon a successful creation, I should be redirected to the `camper's` show page.

get '/signups', to: "signups#new", as: "new_signup" #render the form for a camper to signup
post '/signups', to: "signups#create" #actually creates the signup

5. As a user, I should be able to fill out a form to create a new `camper`, with their names and age!

### Hints / Tips

+ Remember we want to be RESTful. What URL should show info about a particular camper? What URL should show a form to create a signup? What controller actions are associated?  
