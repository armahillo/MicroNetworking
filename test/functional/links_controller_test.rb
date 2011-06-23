require 'test_helper'

class LinksControllerTest < ActionController::TestCase
  setup do
    @weblink = links(:web_link)
    @emaillink = links(:email_link)
    @person = people(:normal_user)
  end

  test "should get new" do
    get :new, :person_id => @person.id
    assert_response :success
  end

  test "should create link" do
    assert_difference('Link.count') do
      post :create, :link => @weblink.attributes, :person_id => @person.id
    end
    assert_difference('Link.count') do
      post :create, :link => @emaillink.attributes, :person_id => @person.id
    end

    assert_redirected_to person_path(@person)
  end

  test "should get edit" do
    get :edit, :id => @weblink.to_param, :person_id => @person.id
    assert_response :success
  end

  test "should update link" do
    put :update, :id => @weblink.to_param, :link => @weblink.attributes, :person_id => @person.id
    assert_redirected_to person_path(@person)
  end

=begin
  test "should destroy link" do
    assert_difference('Link.count', -1) do
      delete :destroy, :id => @weblink.to_param
    end

    assert_redirected_to links_path
  end
=end
end
