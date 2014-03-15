#
# Cookbook Name:: openrtm-aist-python
# Recipe:: default
#
# Copyright 2014, Yosuke Matsusaka
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

include_recipe "build-essential"
include_recipe "subversion::client"
include_recipe "python"
include_recipe "omniorb"
include_recipe "omniorbpy"

bash "compile_openrtm-aist-python" do
  cwd "#{Chef::Config['file_cache_path']}/OpenRTM-aist-Python"
  code <<-EOH
      python setup.py build_core build_example
      python setup.py install_core_lib install_core_scripts install_example
  EOH
  action :nothing
end

subversion "OpenRTM-aist-Python" do
  repository "http://svn.openrtm.org/OpenRTM-aist-Python/branches/RELENG_1_1/OpenRTM-aist-Python/"
  revision "HEAD"
  destination "#{Chef::Config[:file_cache_path]}/OpenRTM-aist-Python"
  action :sync
  notifies :run, "bash[compile_openrtm-aist-python]", :immediately
end

