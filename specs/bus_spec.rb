require("minitest/autorun")
require("minitest/rg")
require_relative("../bus")
require_relative("../person")

class BusTest < MiniTest::Test

  def setup()
    @bus = Bus.new(22, "Ocean Terminal")
    @passenger1 = Person.new("Mike Missing", 26)
    @passenger2 = Person.new("Andy Gone", 23)
  end

  def test_drive()
    assert_equal("brum, brum", @bus.drive())
  end

  def test_number_of_passengers()
    assert_equal(0, @bus.number_of_passengers())
  end

  def test_add_passenger()
    @bus.add_passenger(@passenger1)
    assert_equal(1, @bus.number_of_passengers())
  end

  def test_drop_off_passenger()
    @bus.add_passenger(@passenger2)
    @bus.add_passenger(@passenger1)
    @bus.drop_off_passenger(@passenger2)
    assert_equal(1, @bus.number_of_passengers())
  end

  def test_remove_all_passengers()
    @bus.add_passenger(@passenger1)
    @bus.add_passenger(@passenger2)
    @bus.remove_all_passengers(@passengers)
    assert_equal(0, @bus.number_of_passengers())
  end

end
