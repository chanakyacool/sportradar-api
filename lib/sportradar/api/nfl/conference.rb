# frozen_string_literal: true

module Sportradar
  module Api
    class Nfl::Conference < Data
      attr_accessor :response, :id, :name, :alias, :divisions

      def initialize(data, **opts)
        @response = data
        @api      = opts[:api]
        @id = data['id']
        @name = data['name']
        @alias = data['alias']
        @divisions = parse_into_array(selector: response['division'], klass: Sportradar::Api::Nfl::Division) if response['division']
      end
    end
  end
end
