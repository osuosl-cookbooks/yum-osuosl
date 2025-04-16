#
# Cookbook:: yum-osuosl
# Recipe:: virt
#
# Copyright:: 2025, Oregon State University
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
yum_repository 'osuosl-virt' do
  repositoryid 'osuosl-virt'
  description 'OSUOSL virt repo $releasever - $basearch'
  baseurl 'https://ftp.osuosl.org/pub/osl/repos/yum/$releasever/virt/$basearch'
  gpgkey 'https://ftp.osuosl.org/pub/osl/repos/yum/RPM-GPG-KEY-osuosl-2024'
end
