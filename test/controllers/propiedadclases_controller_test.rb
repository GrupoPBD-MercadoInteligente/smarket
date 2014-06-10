require 'test_helper'

class PropiedadclasesControllerTest < ActionController::TestCase
  setup do
    @propiedadclase = propiedadclases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:propiedadclases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create propiedadclase" do
    assert_difference('Propiedadclase.count') do
      post :create, propiedadclase: { clase_id: @propiedadclase.clase_id, propiedad_id: @propiedadclase.propiedad_id }
    end

    assert_redirected_to propiedadclase_path(assigns(:propiedadclase))
  end

  test "should show propiedadclase" do
    get :show, id: @propiedadclase
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @propiedadclase
    assert_response :success
  end

  test "should update propiedadclase" do
    patch :update, id: @propiedadclase, propiedadclase: { clase_id: @propiedadclase.clase_id, propiedad_id: @propiedadclase.propiedad_id }
    assert_redirected_to propiedadclase_path(assigns(:propiedadclase))
  end

  test "should destroy propiedadclase" do
    assert_difference('Propiedadclase.count', -1) do
      delete :destroy, id: @propiedadclase
    end

    assert_redirected_to propiedadclases_path
  end
end
