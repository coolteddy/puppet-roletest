# puppet-roletest

This repo is to test kitchen puppet.
Ref:
https://github.com/neillturner/kitchen-puppet
http://ehaselwanter.com/en/blog/2014/05/08/using-test-kitchen-with-puppet/

To run this...

```bash
bundle install
librarian-puppet install
kitchen list
kitchen create
kitchen converge
kitchen verify
kitchen destroy
```

##Side notes
makesure Puppetfile and metadata.json is present.
metadata.json is for dependencies and Puppetfile is downloading actual module.

For hieradata, you need
hiera_data_path: hieradata

For hiera.yaml config file, seems like you don't need to explicitly declare..
hiera_config_path: hiera.yaml

But you will need explicit declaration on datadir declaration in hiera.yaml
:datadir: /tmp/kitchen/hiera

puppet_yum_collections_repo is only works with centos-7.
With 6.5 box_url wont work.
