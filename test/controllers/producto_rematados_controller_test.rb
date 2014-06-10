require 'test_helper'

class ProductoRematadosControllerTest < ActionController::TestCase
  setup do
    @producto_rematado = producto_rematados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:producto_rematados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create producto_rematado" do
    assert_difference('ProductoRematado.count') do
      post :create, producto_rematado: { prod_sub_cantidad: @producto_rematado.prod_sub_cantidad, prod_sub_id: @producto_rematado.prod_sub_id, prod_sub_precio_unitario: @producto_rematado.prod_sub_precio_unitario, producto_id: @producto_rematado.producto_id }
    end

    assert_redirected_to producto_rematado_path(assigns(:producto_rematado))
  end

  test "should show producto_rematado" do
    get :show, id: @producto_rematado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @producto_rematado
    assert_response :success
  end

  test "should update producto_rematado" do
    patch :update, id: @producto_rematado, producto_rematado: { prod_sub_cantidad: @producto_rematado.prod_sub_cantidad, prod_sub_id: @producto_rematado.prod_sub_id, prod_sub_precio_unitario: @producto_rematado.prod_sub_precio_unitario, producto_id: @producto_rematado.producto_id }
    assert_redirected_to producto_rematado_path(assigns(:producto_rematado))
  end

  test "should destroy producto_rematado" do
    assert_difference('ProductoRematado.count', -1) do
      delete :destroy, id: @producto_rematado
    end

    assert_redirected_to producto_rematados_path
  end
end
