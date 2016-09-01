require 'test_helper'

class ModelsControllerTest < ActionController::TestCase
  setup do
    @model = models(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:models)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create model" do
    assert_difference('Model.count') do
      post :create, model: { body: @model.body, doors: @model.doors, engine_size: @model.engine_size, fuel: @model.fuel, manufactured_from: @model.manufactured_from, manufactured_until: @model.manufactured_until, name: @model.name, trim: @model.trim }
    end

    assert_redirected_to model_path(assigns(:model))
  end

  test "should show model" do
    get :show, id: @model
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @model
    assert_response :success
  end

  test "should update model" do
    patch :update, id: @model, model: { body: @model.body, doors: @model.doors, engine_size: @model.engine_size, fuel: @model.fuel, manufactured_from: @model.manufactured_from, manufactured_until: @model.manufactured_until, name: @model.name, trim: @model.trim }
    assert_redirected_to model_path(assigns(:model))
  end

  test "should destroy model" do
    assert_difference('Model.count', -1) do
      delete :destroy, id: @model
    end

    assert_redirected_to models_path
  end
end
