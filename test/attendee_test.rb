require 'minitest/autorun'
require 'minitest/pride'
require './lib/item'
require './lib/attendee'

class AttendeeTest < Minitest::Test

  def test_it_exists
    attendee = Attendee.new(name: 'Megan', budget: '$50')

    assert_instance_of Attendee, attendee
  end

  def test_it_has_attributes
    attendee = Attendee.new(name: 'Megan', budget: '$50')

    assert_equal "Megan", attendee.name
    assert_equal 50, attendee.budget
  end
end
