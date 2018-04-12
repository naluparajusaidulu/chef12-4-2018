#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.


package "apache2" do
   action :install
end

service "apache2" do
   action [ :enable, :start ]
end
apt_update "update" 

package "tomcat7" do
  action :install
end
service "tomcat7" do
  action [ :enable, :start ] 
end   