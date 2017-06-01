# frozen_string_literal: true

module Sportradar
  module Api
    module Basketball
      class TvTimeout < Timeout
        def tv?
          true
        end
      end
    end
  end
end
