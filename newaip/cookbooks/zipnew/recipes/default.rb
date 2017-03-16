bash 'extract_module' do
  code <<-EOH
    tar xzf /home/centos/Documents/rahul.tgz
    mv /home/centos/Documents/rahul /home/centos/Documents/rahul/chefbook 
    EOH
end
