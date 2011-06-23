require 'test_helper'

class LinkTypeTest < ActiveSupport::TestCase

  def setup
    @link_type = LinkType.create(:type_name => "Test")
  end

end
