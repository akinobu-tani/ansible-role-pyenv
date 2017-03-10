Ansible Role pyenv
=========

[![Build Status](https://travis-ci.org/akinobu-tani/ansible-role-pyenv.svg?branch=master)](https://travis-ci.org/akinobu-tani/ansible-role-pyenv)
Installs pyenv.

Requirements
------------

none

Role Variables
--------------

``` yaml
pyenv_version: HEAD

pyenv_plugins:
  - name: pyenv-virtualenv
    repo_url: https://github.com/pyenv/pyenv-virtualenv.git
    version: HEAD

python_versions:
  - 3.6.0
  - 2.7.13

python_global_version: 3.6.0

pyenv_install_path: $HOME/.pyenv
pyenv_profile_path: $HOME/.bash_profile
```

Dependencies
------------

none

Example Playbook
----------------

``` yaml
- hosts: servers
  vars:
    python_versions:
      - 3.6.0
      - 2.7.13
    python_global_version: 3.6.0
  roles:
    - ansible-role-pyenv
```

License
-------

MIT

Author Information
------------------

[Akinobu Tani](http://github.com/akinobu-tani)
