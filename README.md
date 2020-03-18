# Twilio SMS

This project contains a quick implementation of SMS notification services using Twilio and RapidAPI. The goal of this project is to show a valuable approach to providing Twilio's SMS capabilities in a lightweight, "Railsy" manner. This project does not currently contain views to see hands on (this may come in later commits!).

To start this project yourself, run:
```
rails new twilio_sms -d postgresql --skip-javascript
```

Add the following gems to your Gemfile:
```
gem 'bcrypt'
gem 'unirest'
```
and then run:
```
bundle install
```
You should now have a working rails project with the required dependencies.

From here, I created a User model by running:
```
rails generate model User name:string password_digest:string phone:string mobile:boolean
```
in the terminal.

I also created the controllers UsersController and PagesController by running:
```
rails generate controller Users
rails generate controller Pages
```
in the terminal.

In the routes file I setup resources for Users adding the `new` and `create` routes. I also added the Pages resource and set the root to action `index`.

The next step is to code the lib modules and the controller actions provided in this project!
