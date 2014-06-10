require 'test_helper'

class ProvinciaUnitsControllerTest < ActionController::TestCase
  setup do
    @provincia_unit = provincia_units(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:provincia_units)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create provincia_unit" do
    assert_difference('ProvinciaUnit.count') do
      post :create, provincia_unit: { provincia_id: @provincia_unit.provincia_id, provincia_nombre: @provincia_unit.provincia_nombre, region_id: @provincia_unit.region_id }
    end

    assert_redirected_to provincia_unit_path(assigns(:provincia_unit))
  end

  test "should show provincia_unit" do
    get :show, id: @provincia_unit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @provincia_unit
    assert_response :success
  end

  test "should update provincia_unit" do
    patch :update, id: @provincia_unit, provincia_unit: { provincia_id: @provincia_unit.provincia_id, provincia_nombre: @provincia_unit.provincia_nombre, region_id: @provincia_unit.region_id }
    assert_redirected_to provincia_unit_path(assigns(:provincia_unit))
  end

  test "should destroy provincia_unit" do
    assert_difference('ProvinciaUnit.count', -1) do
      delete :destroy, id: @provincia_unit
    end

    assert_redirected_to provincia_units_path
  end
end
