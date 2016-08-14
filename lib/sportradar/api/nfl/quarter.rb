module Sportradar
  module Api
    class Nfl::Quarter < Data
      attr_accessor :response, :id, :number, :sequence, :home_points, :away_points, :drives

      def initialize(data)
        @response = data
        @id = data["id"]
        @number = data["number"]
        @sequence = data["sequence"]
        @home_points = data["home_points"]
        # @home_points = response['scoring']['home']['points'] # from play_by_play
        @away_points = data["away_points"]
        # @away_points = response['scoring']['away']['points'] # from play_by_play
        @drives = data.dig("play_by_play", 'drive')&.map{ |drive| Sportradar::Api::Nfl::Drive.new drive }
      end

    end
  end
end
