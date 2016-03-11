Setup Instructions;

bundle install && bundle exec rake db:migrate && bundle exec rake db:seed && bundle exec rake spree_sample:load  

rails r db/challenge_seeds.rb  

rails s  

