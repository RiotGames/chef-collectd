#
# Cookbook Name:: collectd
# Attributes:: default
#
# Copyright 2010, Atari, Inc
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

default[:collectd][:base_dir]                    = "/var/lib/collectd"
default[:collectd][:plugin_dir]                  = "/usr/lib/collectd"
default[:collectd][:types_db]                    = ["/usr/share/collectd/types.db"]
default[:collectd][:collectd_conf_file]          = "/etc/collectd/collectd.conf"
default[:collectd][:interval]                    = 10
default[:collectd][:read_threads]                = 5

default[:collectd][:collectd_web][:path]         = "/srv/collectd_web"
default[:collectd][:collectd_web][:hostname]     = "collectd"

default[:collectd][:install_method]                = "package"
default[:collectd][:source][:version]            = "5.1.0"

default[:collectd][:ping][:host]                 = Chef::Config[:solo] == true ? node[:network][:default_gateway] : "#{node[:chef_client][:server_url].gsub('https://', '')}" 
default[:collectd][:graphite][:host]             = node[:fqdn]
default[:collectd][:graphite][:port]             = "2003"
default[:collectd][:graphite][:prefix]           = Chef::Config[:solo] == true ? "chef-solo-" : " #{node[:chef_environment]}-"
default[:collectd][:graphite][:escape_character] = "_"
default[:collectd][:graphite][:always_append_ds] = false
default[:collectd][:graphite][:store_rates]      = false
