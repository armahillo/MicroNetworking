require 'test_helper'

class PersonTest < ActiveSupport::TestCase

  def setup
    @p = people(:normal_user)
  end

  test "validations" do
    # failure - should require a name
    new_p = Person.new
    assert_equal false, new_p.valid?

    new_p.name = "George Sampson"
    assert_equal true, new_p.valid?
  end

  test "has a name" do
    assert_not_nil @p.name
  end

  test "has a location" do
    assert_not_nil @p.location    
  end

  test "can have links" do
    @p = Person.first
    l = Link.new(:name => "Test", :url => "http://www.test.com", :link_type_id => 1)
    @p.links << l
    @p.save
    assert @p.links.size > 0
  end
end
