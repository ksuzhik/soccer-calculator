require './lib/soccer/game'
require 'test/unit'

class GameTest < Test::Unit::TestCase
  def test_win_points
    game = Soccer::Game.new('Lions' => 1, 'Snakes' => 3)
    expected_result = { 'Lions' => 0, 'Snakes' => 3 }
    assert_equal(expected_result, game.result)
  end

  def test_draw_points
    game = Soccer::Game.new('Lions' => 1, 'Snakes' => 1)
    expected_result = { 'Lions' => 1, 'Snakes' => 1 }
    assert_equal(expected_result, game.result)
  end
end
