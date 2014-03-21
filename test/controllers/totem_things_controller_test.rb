require 'test_helper'

class TotemThingsControllerTest < ActionController::TestCase
  setup do
    @totem_thing = totem_things(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:totem_things)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create totem_thing" do
    assert_difference('TotemThing.count') do
      post :create, totem_thing: { code: @totem_thing.code, name: @totem_thing.name }
    end

    assert_redirected_to totem_thing_path(assigns(:totem_thing))
  end

  test "should show totem_thing" do
    get :show, id: @totem_thing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @totem_thing
    assert_response :success
  end

  test "should update totem_thing" do
    patch :update, id: @totem_thing, totem_thing: { code: @totem_thing.code, name: @totem_thing.name }
    assert_redirected_to totem_thing_path(assigns(:totem_thing))
  end

  test "should destroy totem_thing" do
    assert_difference('TotemThing.count', -1) do
      delete :destroy, id: @totem_thing
    end

    assert_redirected_to totem_things_path
  end
end
