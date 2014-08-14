Resume
-------
This project is a Ruby on Rails site to test how to connect with *Salesforce.com* and edit ours data.
For this, it was used the gem *RestForce* that support transfer data between their. A gem [*SalesForce Desafio*] [salesforce_desafio] was build for manager the data needs on this site.
For authenticate, was used *oauth2.0*. The config data was transferred to the gem *SalesForce Desafio* then to gem *RestForce* to connect in the *salesforce.com* to get the data of *Lead*.

This site has a link to sign in to use authentication salesforce. After logging appears a link with a representation of CRUD *Pessoa* whose data is synchronized with the salesforce *Lead*.
The operators CRUD, only create *Pessoa* will be sincronyze with salesforce, in other words if you create a person in this site, the person is create in *Lead* of the *salesforce.com*. **Other operators CRUD are not implemented for this test. If you delete a *Pessoa*, not remove person in *salesforce site*.**


It was forked this github [rails-salesforce-oauth-template] [bfagundez]

Example Testing
-------
[Heroku] [heroku].

Links Helper
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
