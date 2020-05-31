require "minitest/autorun"
require "minitest/pride"
require "./lib/games"

class GamesTest < MiniTest::Test

	def setup
		games_params = {
			:game_id => "2012030221",
			:season => "20122013",
			:away_team_id => "3",
			:home_team_id => "6",
			:away_goals => "2",
			:home_goals => "3"
		}
    @games = Games.new(games_params)
	end

	def test_it_exists
		assert_instance_of Games, @games
	end

	def test_it_has_attributes
		assert_equal "2012030221", @games.game_id
		assert_equal "20122013", @games.season
		assert_equal "3", @games.away_team_id
		assert_equal "6", @games.home_team_id
		assert_equal 2, @games.away_goals
		assert_equal 3, @games.home_goals
	end

end
