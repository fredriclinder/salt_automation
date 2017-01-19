common_packages:
  pkg.installed:
    - pkgs:
      - curl
      - openssh-server
      - ca-certificates
      - postfix

install_gitlab:
  cmd.run:
    - name: curl -sS https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | sudo bash

gitlab_pkgs:
  pkg.installed:
    - pkgs:
      - gitlab-ce

configure_gitlab:
  cmd.run:
    - name: gitlab-ctl reconfigure

set_gitlab_rootpassword:
  cmd.run:
    - name: gitlab-rake gitlab:setup RAILS_ENV=production GITLAB_ROOT_PASSWORD=rootgitlab GITLAB_ROOT_EMAIL=root@email.com force=yes

gitlab_exec:
  cmd.run:
    - name: gitlab-ctl reconfigure
