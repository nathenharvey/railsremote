name 'simple_web'
maintainer 'Joe Gardiner'
maintainer_email 'joe@chef.io'
license 'all_rights'
description 'Installs/Configures simple_web'
long_description 'Installs/Configures simple_web'
version '0.1.0'

depends 'apt'
depends 'firewall'
depends 'apache2'

# hardening cookbooks
depends 'os-hardening'
depends 'ssh-hardening'
