include_recipe "chef-collectd"

#Install some plugins to collect basic metrics that require
#no configuration.
%w{cpu memory load disk network interface}.each do |plugin|
  collectd_plugin plugin do 
  end
end
