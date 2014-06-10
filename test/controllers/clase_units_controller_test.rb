require 'test_helper'

class ClaseUnitsControllerTest < ActionController::TestCase
  setup do
    @clase_unit = clase_units(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clase_units)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clase_unit" do
    assert_difference('ClaseUnit.count') do
      post :create, clase_unit: { cla_clase_id: @clase_unit.cla_clase_id, clase_id: @clase_unit.clase_id, clase_nombre: @clase_unit.clase_nombre }
    end

    assert_redirected_to clase_unit_path(assigns(:clase_unit))
  end

  test "should show clase_unit" do
    get :show, id: @clase_unit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clase_unit
    assert_response :success
  end

  test "should update clase_unit" do
    patch :update, id: @clase_unit, clase_unit: { cla_clase_id: @clase_unit.cla_clase_id, clase_id: @clase_unit.clase_id, clase_nombre: @clase_unit.clase_nombre }
    assert_redirected_to clase_unit_path(assigns(:clase_unit))
  end

  test "should destroy clase_unit" do
    assert_difference('ClaseUnit.count', -1) do
      delete :destroy, id: @clase_unit
    end

    assert_redirected_to clase_units_path
  end
end
