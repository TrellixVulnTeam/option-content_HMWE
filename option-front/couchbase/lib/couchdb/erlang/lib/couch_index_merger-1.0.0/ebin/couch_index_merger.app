% Licensed under the Apache License, Version 2.0 (the "License"); you may not
% use this file except in compliance with the License. You may obtain a copy of
% the License at
%
%   http://www.apache.org/licenses/LICENSE-2.0
%
% Unless required by applicable law or agreed to in writing, software
% distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
% WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
% License for the specific language governing permissions and limitations under
% the License.

{application, couch_index_merger, [
    {description, "Index merger"},
    {vsn, ""},
    {modules, [
        couch_index_merger,
        couch_view_merger,
        couch_view_merger_queue,
        couch_httpd_view_merger,
        couch_index_app,
        couch_index_sup,
        couch_query_logger
    ]},
    {registered, [
        couch_view_merger_queue,
        couch_query_logger
    ]},
    {mod, {couch_index_app, []}},
    {applications, [kernel, stdlib]}
]}.
