### Apache Config ###
default['firewall']['allow_ssh'] = true
default['simple_web']['open_ports'] = 443

default['simple_web']['document_root'] = '/var/www/html'

# set TLS version
override['apache']['mod_ssl']['protocol'] = 'All'
override['apache']['mod_ssl']['honor_cipher_order'] = 'On'


### Website styles ###
# main colour
default['website']['colour'] = '#4597b3'
# display logo - none / inline
default['website']['logo'] = 'inline'
# title text
default['website']['title'] = 'My awesome website'
