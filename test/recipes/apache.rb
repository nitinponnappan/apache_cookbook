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

file '/tmp/something' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end
