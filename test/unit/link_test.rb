require 'test_helper'

class LinkTest < ActiveSupport::TestCase

  def setup
    @link = links(:web_link)
    @email = links(:email_link)
  end

  def test_validations
    assert @link.valid?, "Invalid web link"
    assert @email.valid?, "Invalid email link"
  end

end
