# CollabDesign Participa

A decidim instance to let members of the collabdesign community participate.
This decidim instance is made to run on heroku, with the following infrastructure: 

* a Redis instance for cache
* a Redis instance for async jobs (SideKiq)
* a Sidekiq process running
* a S3-compatible bucket

We run here with an OIDC omniauth strategy to connect to a wordpress instance (the website of collabdesign.org).

# Thanks

* [Decidim community](https://decidim.org), for the awesome free and open-source product
* [CollabDesign](https://collabdesign.org), for the community the build, and the possibilities they open in the field of collaboration at scale.

# Licence
This repository is under [AGPLv3 licence](https://choosealicense.com/licenses/agpl-3.0/)