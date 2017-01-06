#
# Cookbook Name:: yum-osuosl
# Recipe:: default
#
# Copyright (C) 2014 Oregon State University
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

yum_repository 'osuosl' do
  repositoryid 'osuosl'
  description 'OSUOSL repo $releasever - $basearch'
  url 'http://ftp.osuosl.org/pub/osl/repos/yum/$releasever/$basearch'
  gpgkey 'http://ftp.osuosl.org/pub/osl/repos/yum/RPM-GPG-KEY-osuosl'
  action :add
end
