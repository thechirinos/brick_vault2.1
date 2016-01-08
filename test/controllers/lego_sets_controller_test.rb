require 'test_helper'

class LegoSetsControllerTest < ActionController::TestCase
  setup do
    @lego_set = lego_sets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lego_sets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lego_set" do
    assert_difference('LegoSet.count') do
      post :create, lego_set: { description: @lego_set.description, link: @lego_set.link, name: @lego_set.name, set: @lego_set.set, theme: @lego_set.theme, user_id: @lego_set.user_id }
    end

    assert_redirected_to lego_set_path(assigns(:lego_set))
  end

  test "should show lego_set" do
    get :show, id: @lego_set
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lego_set
    assert_response :success
  end

  test "should update lego_set" do
    patch :update, id: @lego_set, lego_set: { description: @lego_set.description, link: @lego_set.link, name: @lego_set.name, set: @lego_set.set, theme: @lego_set.theme, user_id: @lego_set.user_id }
    assert_redirected_to lego_set_path(assigns(:lego_set))
  end

  test "should destroy lego_set" do
    assert_difference('LegoSet.count', -1) do
      delete :destroy, id: @lego_set
    end

    assert_redirected_to lego_sets_path
  end
end
