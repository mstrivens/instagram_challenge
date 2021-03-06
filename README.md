Instagram Challenge
===================

## How to Use

* Fork/Clone the repo
* Download
* Run Bundler
* Run 'rails s'

## User Stories

As a user    
So I can post photos   
I would like to be able to create an account    

As a user   
So I can personalise my account   
I would like to be able to log in to my account   

As a user   
So I can protect my information   
I would like to be able to log out of my account   

As a user   
So I can see my recent history of posting   
I would like to be able to see my posts in reverse chronological order   

As a user   
So I can show my photos to the world   
I would like to be able to post them   

As a user   
So I can see how popular i am   
I would like to receive likes   

As a user   
So people can tell me how wonderful I am   
I would like get comments on my photos   

Start by testing for string posts instead of photos and create db migration at later point to be able to use photos.

- Furthe work:

* I plan to finish off the remaining user stories this week
* In addition I will look to style the web page with css

## Instructions

* Feel free to use Google, your notes, books, etc., but work on your own
* If you refer to the solution of another coach or student, please put a link to that in your README
* If you have a partial solution, **still check in a partial solution**
* You must submit a pull request to this repo with your code by 9am Monday morning

## Task

Build Instagram: Simple huh!

Your challenge is to build Instagram using Rails. You'll need **users** who can post **pictures**, write **comments** on pictures and **like** a picture. Style it like Instagram's website (or more awesome).

Bonus if you can add filters!

## How to start

1. Produce some stories, break them down into tasks, and estimate
2. Fork this repo, clone, etc
3. Initialize a new rails project

Remember to proceed in small steps! Getting confused? Make the steps even smaller.

## Code Quality

For linting, you can use the `.rubocop.yml` in this repository (or your own!).
You'll need these gems:

```ruby
gem "rubocop", "0.79.0", require: false
gem "rubocop-rails"
```

You can also lint Javascript, CSS, and ERB ??? feel free to research this. These
will help you to train yourself to produce cleaner code ??? and will often alert
you to mistakes or mishaps!
