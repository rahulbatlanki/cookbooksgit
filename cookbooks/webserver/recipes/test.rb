file "ok.txt" do
 action :create
end

file "ok.txt" do
 group "centos"
end
package "git"
directory "src"
service "firewalld" do
 supports :restart=> true
 action [ :disable, :stop ]
end

package "httpd"

service "httpd" do
action :start
end

file "/var/www/html/home.html" do
content "Hello all"
end

service 'memcached' do
  action :nothing
  supports :status => true, :start => true, :stop => true, :restart => true
end
