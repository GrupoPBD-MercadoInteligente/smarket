require 'test_helper'

class CompraVentaNormalsControllerTest < ActionController::TestCase
  setup do
    @compra_venta_normal = compra_venta_normals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:compra_venta_normals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create compra_venta_normal" do
    assert_difference('CompraVentaNormal.count') do
      post :create, compra_venta_normal: { compraventa_id2: @compra_venta_normal.compraventa_id2, compraventanor_fecha: @compra_venta_normal.compraventanor_fecha, producto_of_id: @compra_venta_normal.producto_of_id, tipo_trans_id: @compra_venta_normal.tipo_trans_id, usu_usuario_id: @compra_venta_normal.usu_usuario_id, usuario_id: @compra_venta_normal.usuario_id }
    end

    assert_redirected_to compra_venta_normal_path(assigns(:compra_venta_normal))
  end

  test "should show compra_venta_normal" do
    get :show, id: @compra_venta_normal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @compra_venta_normal
    assert_response :success
  end

  test "should update compra_venta_normal" do
    patch :update, id: @compra_venta_normal, compra_venta_normal: { compraventa_id2: @compra_venta_normal.compraventa_id2, compraventanor_fecha: @compra_venta_normal.compraventanor_fecha, producto_of_id: @compra_venta_normal.producto_of_id, tipo_trans_id: @compra_venta_normal.tipo_trans_id, usu_usuario_id: @compra_venta_normal.usu_usuario_id, usuario_id: @compra_venta_normal.usuario_id }
    assert_redirected_to compra_venta_normal_path(assigns(:compra_venta_normal))
  end

  test "should destroy compra_venta_normal" do
    assert_difference('CompraVentaNormal.count', -1) do
      delete :destroy, id: @compra_venta_normal
    end

    assert_redirected_to compra_venta_normals_path
  end
end
