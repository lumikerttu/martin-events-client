# martin-events-client

This is a README and is normally a document or whatever steps to get the application up and running

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.


### Prerequisites

You'll need:

*a computer*

### Installing

A step by step series of examples that tell you how to get a development up and running

Cloning git repo:
```
git clone https://github.com/sinivaal/martin-events-client
```
Opening the repo root folder:
```
cd martin-events-client
```
Important install (dont' ask why):
```
bundle install
```
Making database:
```
rake db:migrate
```
Starting rails server to see your result in a browser:
```
rails s
```
Create database from seed:
```
rake db:seed
```
Open seed.db to rewrite last lines and put there your own mail-account and password and Login to your application:
```
edit mail@ and password 
```
Create file secret.env to vendor folder:
```
touch secret.env
```
Starting rails server to see your result in a browser:
```
rails s
```
Go to ReCaptcha Github page https://www.google.com/recaptcha/admin#list to create your own API keys and choose the type of reCaptcha checkbox and register:
```
copy public and private keys to secret.env

export RECAPTCHA_SITE_KEY  = '6Lc6BAAAAAAAAChqRbQZcn_yyyyyyyyyyyyyyyyy'
export RECAPTCHA_SECRET_KEY = '6Lc6BAAAAAAAAKN3DRm6VA_xxxxxxxxxxxxxxxxx'
```
Go to https://github.com/ambethia/recaptcha to add gem to Gemfile:
```
gem "recaptcha", require: 'recaptcha/rails'
```
Close your runnig server to install the Gem:
```
bundle install
```
Add API keys to secret.env:
```
export RECAPTCHA_SITE_KEY='6Lc6BAAAAAAAAChqRbQZcn_yyyyyyyyyyyyyyyyy'
export RECAPTCHA_SECRET_KEY='6Lc6BAAAAAAAAKN3DRm6VA_xxxxxxxxxxxxxxxxx'
```
Go to terminal rails s window and run command:
```
source secret.env
```
Run server:
```
rails s
```
Add recaptcha tags to app/views/contact/form:
```
r<div class="form-group">
    <label for="content">Content</label>
    <textarea name="content" class="form-control" id="content"></textarea>
</div>
<%= recaptcha_tags %>
```



## Built With

* [Ruby](https://www.ruby-lang.org/en/) - Version 2.5.1p57
* [Rails](https://rubyonrails.org/) - Version 5.2.1


## Versioning

We use [Git](https://git-scm.com/) for versioning. For the versions available, see the [martin-events-client](https://github.com/sinivaal/martin-events-client). 

## Authors

See the list of [contributors](https://github.com/sinivaal/martin-events-client/graphs/contributors) who participated in this project.

## License

This project is licensed under the MIT License

## Acknowledgments

* Hat tip to anyone whose code was used
* Inspiration


