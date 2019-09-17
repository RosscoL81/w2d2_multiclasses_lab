require("minitest/autorun")
require("minitest/rg")
require_relative("../bus_stop")

class BusStopTest < MiniTest::Test

  def setup
    @bus_stop = BusStop.new("Codeclan")
  end

  def test_add_person_to_queue()
    assert_equal(1, @queue.add_person_to_queue())
  end


end
