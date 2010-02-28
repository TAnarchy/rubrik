require 'test_helper'

class GradedComponentsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:graded_components)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create graded_component" do
    assert_difference('GradedComponent.count') do
      post :create, :graded_component => { }
    end

    assert_redirected_to graded_component_path(assigns(:graded_component))
  end

  test "should show graded_component" do
    get :show, :id => graded_components(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => graded_components(:one).to_param
    assert_response :success
  end

  test "should update graded_component" do
    put :update, :id => graded_components(:one).to_param, :graded_component => { }
    assert_redirected_to graded_component_path(assigns(:graded_component))
  end

  test "should destroy graded_component" do
    assert_difference('GradedComponent.count', -1) do
      delete :destroy, :id => graded_components(:one).to_param
    end

    assert_redirected_to graded_components_path
  end
end
