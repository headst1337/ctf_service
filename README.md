### About
#### The service was written for POLYGON CTF 2021, held within the Siberian Forum "Information Security 2021" with the Command Injection vulnerability. It is a website with the ability to create notes. The service is written using Ruby on rails framework.
___

### How to run:

1. ***Execute and copy the output***
```sh
rake secret
```
2. ***Execute***
```sh
export SECRET_KEY_BASE=output-of-rake-secret 
RAILS_ENV=production rake db:create db:migrate db:seed
```
3. ***Change production.rb file***
```sh
config.assets.compile = true
```
5. ***To precompile your assets***
```sh
RAILS_ENV=production bundle exec rake assets:precompile
```
6. ***Run***
```sh
RAILS_ENV=production rails s
```
