andrewrothstein.spark
=========
[![Build Status](https://travis-ci.org/andrewrothstein/ansible-spark.svg?branch=master)](https://travis-ci.org/andrewrothstein/ansible-spark)

Installs [Apache Spark](https://spark.apache.org).

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.spark
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
