#
# Cookbook Name:: mpt-status
# Recipe:: default
#
# Copyright 2013, HiST AITeL
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

# Check if the machine is a virtual Debian 6 machine
if node[:platform] == 'debian' \
  and node[:platform_version][0] >= '6' \
  and node[:virtualization][:role] == 'guest'
  
  # Remove package
  package 'mpt-status' do
    action :remove
  end
end
