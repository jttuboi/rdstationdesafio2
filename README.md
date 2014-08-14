Resume
-------
This project is a Ruby on Rails site to test how to connect with Salesforce.com and edit ours data.
For this, was used the gem RestForce that support transfer data between their. A gem [SalesForce Desafio] [salesforce_desafio] was build for manager the data needs on this site.
For authenticate, was used oauth2.0. The config data was transferred to the gem to get the data in salesforce.
This site has a link to sign in to use authentication salesforce. After logging appears a link with a representation of CRUD Pessoa whose data is synchronized with the salesforce Lead.



It was forked this github [rails-salesforce-oauth-template] [bfagundez]

Testing
-------
[Heroku] [heroku].

Links
-------
- https://developer.salesforce.com/page/Digging_Deeper_into_OAuth_2.0_on_Force.com
- http://www.salesforce.com/us/developer/docs/api/Content/sforce_api_objects_lead.htm
- http://geekymartian.com/articles/ruby-on-rails-4-salesforce-oauth-implementation

License
-------
MIT

[bfagundez]:https://github.com/bfagundez/rails-salesforce-oauth-template
[heroku]:http://rdstationdesafio2.herokuapp.com
[salesforce_desafio]:https://github.com/jttuboi/salesforce_desafio
