require 'test_helper'

class CompraVentaEspecialsControllerTest < ActionController::TestCase
  setup do
    @compra_venta_especial = compra_venta_especials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:compra_venta_especials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create compra_venta_especial" do
    assert_difference('CompraVentaEspecial.count') do
      post :create, compra_venta_especial: { compraventa_id: @compra_venta_especial.compraventa_id, compraventanor_fecha: @compra_venta_especial.compraventanor_fecha, prod_of_nec_id: @compra_venta_especial.prod_of_nec_id, tipo_trans_id: @compra_venta_especial.tipo_trans_id, usu_usuario_id: @compra_venta_especial.usu_usuario_id, usuario_id: @compra_venta_especial.usuario_id }
    end

    assert_redirected_to compra_venta_especial_path(assigns(:compra_venta_especial))
  end

  test "should show compra_venta_especial" do
    get :show, id: @compra_venta_especial
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @compra_venta_especial
    assert_response :success
  end

  test "should update compra_venta_especial" do
    patch :update, id: @compra_venta_especial, compra_venta_especial: { compraventa_id: @compra_venta_especial.compraventa_id, compraventanor_fecha: @compra_venta_especial.compraventanor_fecha, prod_of_nec_id: @compra_venta_especial.prod_of_nec_id, tipo_trans_id: @compra_venta_especial.tipo_trans_id, usu_usuario_id: @compra_venta_especial.usu_usuario_id, usuario_id: @compra_venta_especial.usuario_id }
    assert_redirected_to compra_venta_especial_path(assigns(:compra_venta_especial))
  end

  test "should destroy compra_venta_especial" do
    assert_difference('CompraVentaEspecial.count', -1) do
      delete :destroy, id: @compra_venta_especial
    end

    assert_redirected_to compra_venta_especials_path
  end
end
