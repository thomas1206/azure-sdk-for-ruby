#-------------------------------------------------------------------------
# Copyright 2012 Microsoft Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#--------------------------------------------------------------------------
require "azure/core/configuration"
require "uri"

module Azure
  module ServiceBus
    module Topics
      module URI
        # Public: Generate the URI for a given topic
        #
        # name - The name of the topic
        # host - The host of the API (optional)
        #
        # Returns a URI
        def self.topic(name, host=Azure.config.service_bus_host)
          generate(host, name)
        end

        # Public: Generate the URI for the topics collection
        #
        # options - Options for this query (default: {}):
        #           :skip - Integer: number of entries to skip
        #           :top  - Integer: number of entries to retrieve
        # host    - The host of the API (optional)
        #
        # Returns a URI
        def self.collection(options={}, host=Azure.config.service_bus_host)
          generate(host, "$Resources/Topics", options)
        end

        # Public: Generate the URI for the given topic's messages
        #
        # topic_name  - The topic name
        # host        - The host of the API (optional)
        #
        # Returns a URI
        def self.messages(topic_name, host=Azure.config.service_bus_host)
          generate(host, "#{topic_name}/messages")
        end


        #TODO: we need to move this method to other module to be mixedin here
        #
        # Public: Utility method to generate the URI
        #
        # host  - String. The host for the URI
        # path  - String. The path for the URI
        # query - Hash. The query parameters (optional)
        #
        # Returns a URI
        def self.generate(host, path, query={})
          uri = ::URI.parse(File.join(host, path))
          uri.query = ::URI.encode_www_form(query) unless query.empty?
          uri
        end
      end
    end
  end
end
