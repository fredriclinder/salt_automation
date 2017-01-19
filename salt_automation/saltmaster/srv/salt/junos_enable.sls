common_packages:
  pkg.installed:
    - pkgs:
      - git
      - git-core
      - curl
      - python-dev
      - libssl-dev
      - libxslt1-dev
      - libffi-dev
      - locate
      - python-pip
      - inotify-tools


pip_installations:
  pip.installed:
    - names:
      - regex
      - junos-eznc
      - jxmlease
      - pyparsing
      - twisted
      - service-identity
