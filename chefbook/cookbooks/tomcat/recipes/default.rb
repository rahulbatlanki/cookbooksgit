package "tomcat"


execute 'deploy' do
command wget 'http://mirrors.jenkins.io/war-stable/latest/jenkins.war';mv /root/jenkins.war /home/centos/Documents
end

service "tomcat" do
 action [ :enable, :start ]
end
