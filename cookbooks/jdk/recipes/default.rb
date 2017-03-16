package "wget"

execute "java" do
command "wget "http://filehippo.com/download_java_development_kit/download/80b9966337b884a9c7a9a37506ae7836 -p /opt"
end

execute "install" do
command "rpm -ivh 8u92-b14/jdk-8u92-linux-x64.rpm"
end

