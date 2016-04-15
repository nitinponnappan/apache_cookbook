package "apache2" do
  action :install
end

service "apache2" do
  action [:enable, :start]
end

directory "/srv/www/shared" do
  mode 0755
  owner 'root'
  group 'root'
  recursive true
  action :create
end

file '/var/www/html/index.html' do
  content '<html>My am getting angry.</html>'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end
