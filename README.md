# README
## Simple Rails application for CTF. Like a TODO list.
_______________________________
### FAQ:



 Q: How to install?
 
 A: Visit a google.com.
_______________________________
 Q: Why are you so cool?
 
 A: IMHO, idk.
 ______________________________

### How to run:

1. Download Ruby and Rails
2. Run and copy the output 
> $rake secret 
3. Run
> $export SECRET_KEY_BASE=output-of-rake-secret
4. Change production.rb file  
>config.assets.compile = false to config.assets.compile = true
5. To precompile your assets, 
>$RAILS_ENV=production bundle exec rake assets:precompile
6. Run
> $RAILS_ENV=production rails s
