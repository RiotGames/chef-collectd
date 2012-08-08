include_recipe "chef-collectd"

collectd_plugin "write_graphite" do
  template "write_graphite.conf.erb"
  options(
    :Host            => node[:collectd][:graphite][:host], 
    :Port            => node[:collectd][:graphite][:port], 
    :Prefix          => node[:collectd][:graphite][:prefix], 
    :EscapeCharacter => node[:collectd][:graphite][:escape_character], 
    :AlwaysAppendDS  => node[:collectd][:graphite][:always_append_ds], 
    :StoreRates      => node[:collectd][:graphite][:store_rates]
  )
end

