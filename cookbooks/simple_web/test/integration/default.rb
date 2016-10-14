# # encoding: utf-8

# Inspec test for recipe simple_web::default

# The Inspec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec_reference.html

describe port(443) do
  it { should be_listening }
end

describe package('apache2') do
  it { should be_installed }
end

describe service(apache.service) do
  it { should be_enabled }
  it { should be_running }
end

describe directory('/var/www/html') do
  it { should exist }
end

describe directory('/var/www/html/css') do
  it { should be_owned_by 'www-data' }
  it { should exist }
end

describe file('/var/www/html/index.html') do
  it { should be_file }
end
