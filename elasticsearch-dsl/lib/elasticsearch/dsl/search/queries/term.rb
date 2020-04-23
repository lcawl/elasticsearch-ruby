# Licensed to Elasticsearch B.V under one or more agreements.
# Elasticsearch B.V licenses this file to you under the Apache 2.0 License.
# See the LICENSE file in the project root for more information

module Elasticsearch
  module DSL
    module Search
      module Queries

        # A query which returns documents matching the specified term
        #
        # @note The specified term is *not analyzed* (lowercased, stemmed, etc)
        #
        # @example
        #
        #     search do
        #       query do
        #         term category: 'Opinion'
        #       end
        #     end
        #
        # @see http://www.elasticsearch.org/guide/en/elasticsearch/reference/current/query-dsl-term-query.html
        #
        class Term
          include BaseComponent
        end

      end
    end
  end
end
