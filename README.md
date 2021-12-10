# README
## The service was written for POLYGON CTF 2021, held within the Siberian Forum "Information Security 2021" with the Command Injection vulnerability. It is a website with the ability to create notes. The service is written using Ruby on rails framework.
_______________________________

### How to run:

1. Execute and copy the output 
> rake secret 
2. Execute
> export SECRET_KEY_BASE=output-of-rake-secret
3. Execute 
> RAILS_ENV=production rake db:create db:migrate db:seed
4. Change production.rb file  
> config.assets.compile = false to config.assets.compile = true
5. To precompile your assets, execute 
>$RAILS_ENV=production bundle exec rake assets:precompile
6. Execute
> RAILS_ENV=production rails s
