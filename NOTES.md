rails new office-olympics-backend --api
to generate the rails backend api

setup github repo

configure Gemfile
*


## Models

### User
has many challenges as participants
has many submissions through challenges

#### Attributes
* name
* username


### Challenge
Challenge belongs to an admin User
has many submissions

#### Attributes
* name :string
* description :string
* rules :string
* join code :string
* winner :integer
* runner_up :integer


### Submission
belongs to a Challenge and User
has many votes

#### Attributes
* challenge_id :integer
* user_id :integer
* photo_1
* photo_2
* text :string

### Vote
belongs to a User and a Submission
