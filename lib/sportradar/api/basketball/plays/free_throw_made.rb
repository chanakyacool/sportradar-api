module Sportradar
  module Api
    module Basketball
      class FreeThrowMade < Play::Base
        def base_key
          "freethrow"
        end
        def free_throw_type
          @free_throw_type ||= @statistics.dig(base_key, "free_throw_type")
        end
        def made?
          true
        end
        def points
          1
        end
        def player_id
          @player_id ||= @statistics.dig(base_key, "player", "id")
        end
      end
    end
  end
end