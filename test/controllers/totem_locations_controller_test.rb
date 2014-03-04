require 'test_helper'

class TotemLocationsControllerTest < ActionController::TestCase
  setup do
    @totem_location = totem_locations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:totem_locations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create totem_location" do
    assert_difference('TotemLocation.count') do
      post :create, totem_location: { code: @totem_location.code, description: @totem_location.description, location: @totem_location.location, name: @totem_location.name }
    end

    assert_redirected_to totem_location_path(assigns(:totem_location))
  end

  test "should show totem_location" do
    get :show, id: @totem_location
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @totem_location
    assert_response :success
  end

  test "should update totem_location" do
    patch :update, id: @totem_location, totem_location: { code: @totem_location.code, description: @totem_location.description, location: @totem_location.location, name: @totem_location.name }
    assert_redirected_to totem_location_path(assigns(:totem_location))
  end

  test "should destroy totem_location" do
    assert_difference('TotemLocation.count', -1) do
      delete :destroy, id: @totem_location
    end

    assert_redirected_to totem_locations_path
  end
end
