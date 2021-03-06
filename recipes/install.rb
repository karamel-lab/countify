#
# DO NOT EDIT THIS FILE DIRECTLY - UNLESS YOU KNOW WHAT YOU ARE DOING
#

user node[:countify][:user] do
  action :create
  supports :manage_home => true
  home "/home/#{node[:countify][:user]}"
  shell "/bin/bash"
  not_if "getent passwd #{node[:countify]['user']}"
end

group node[:countify][:group] do
  action :modify
  members ["#{node[:countify][:user]}"]
  append true
end


private_ip = my_private_ip()
public_ip = my_public_ip()



# Pre-Experiment Code


# Configuration Files


