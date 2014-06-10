require 'test_helper'

class CompraRematesControllerTest < ActionController::TestCase
  setup do
    @compra_remate = compra_remates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:compra_remates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create compra_remate" do
    assert_difference('CompraRemate.count') do
      post :create, compra_remate: { comprasubasta_fecha: @compra_remate.comprasubasta_fecha, comprasubasta_id: @compra_remate.comprasubasta_id, prod_sub_id: @compra_remate.prod_sub_id, tipo_trans_id: @compra_remate.tipo_trans_id, usu_usuario_id: @compra_remate.usu_usuario_id, usuario_id: @compra_remate.usuario_id }
    end

    assert_redirected_to compra_remate_path(assigns(:compra_remate))
  end

  test "should show compra_remate" do
    get :show, id: @compra_remate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @compra_remate
    assert_response :success
  end

  test "should update compra_remate" do
    patch :update, id: @compra_remate, compra_remate: { comprasubasta_fecha: @compra_remate.comprasubasta_fecha, comprasubasta_id: @compra_remate.comprasubasta_id, prod_sub_id: @compra_remate.prod_sub_id, tipo_trans_id: @compra_remate.tipo_trans_id, usu_usuario_id: @compra_remate.usu_usuario_id, usuario_id: @compra_remate.usuario_id }
    assert_redirected_to compra_remate_path(assigns(:compra_remate))
  end

  test "should destroy compra_remate" do
    assert_difference('CompraRemate.count', -1) do
      delete :destroy, id: @compra_remate
    end

    assert_redirected_to compra_remates_path
  end
end
