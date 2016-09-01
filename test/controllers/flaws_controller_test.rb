require 'test_helper'

class FlawsControllerTest < ActionController::TestCase
  setup do
    @flaw = flaws(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:flaws)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create flaw" do
    assert_difference('Flaw.count') do
      post :create, flaw: { cost_estimate: @flaw.cost_estimate, description: @flaw.description, mileage: @flaw.mileage, model_id: @flaw.model_id }
    end

    assert_redirected_to flaw_path(assigns(:flaw))
  end

  test "should show flaw" do
    get :show, id: @flaw
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @flaw
    assert_response :success
  end

  test "should update flaw" do
    patch :update, id: @flaw, flaw: { cost_estimate: @flaw.cost_estimate, description: @flaw.description, mileage: @flaw.mileage, model_id: @flaw.model_id }
    assert_redirected_to flaw_path(assigns(:flaw))
  end

  test "should destroy flaw" do
    assert_difference('Flaw.count', -1) do
      delete :destroy, id: @flaw
    end

    assert_redirected_to flaws_path
  end
end
