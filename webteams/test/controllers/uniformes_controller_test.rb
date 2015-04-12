require 'test_helper'

class UniformesControllerTest < ActionController::TestCase
  setup do
    @uniforme = uniformes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:uniformes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create uniforme" do
    assert_difference('Uniforme.count') do
      post :create, uniforme: { cor_id: @uniforme.cor_id, equipe: @uniforme.equipe, modelo_id: @uniforme.modelo_id }
    end

    assert_redirected_to uniforme_path(assigns(:uniforme))
  end

  test "should show uniforme" do
    get :show, id: @uniforme
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @uniforme
    assert_response :success
  end

  test "should update uniforme" do
    patch :update, id: @uniforme, uniforme: { cor_id: @uniforme.cor_id, equipe: @uniforme.equipe, modelo_id: @uniforme.modelo_id }
    assert_redirected_to uniforme_path(assigns(:uniforme))
  end

  test "should destroy uniforme" do
    assert_difference('Uniforme.count', -1) do
      delete :destroy, id: @uniforme
    end

    assert_redirected_to uniformes_path
  end
end
