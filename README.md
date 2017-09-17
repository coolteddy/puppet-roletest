# puppet-roletest

makesure Puppetfile and metadata.json is present.
metadata.json is for dependencies and Puppetfile is downloading actual module.

Then run this command

```bash
librarian-puppet install
```

For hieradata, you need
hiera_data_path: hieradata

For hiera.yaml config file, seems like you don't need to explicitly declare..
hiera_config_path: hiera.yaml

But you will need explicit declaration on datadir declaration in hiera.yaml
:datadir: /tmp/kitchen/hiera

puppet_yum_collections_repo is only works with centos-7.
With 6.5 box_url wont work.
