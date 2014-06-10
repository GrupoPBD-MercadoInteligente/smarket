require 'test_helper'

class RematesControllerTest < ActionController::TestCase
  setup do
    @remate = remates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:remates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create remate" do
    assert_difference('Remate.count') do
      post :create, remate: { estado_subasta_id: @remate.estado_subasta_id, prod_sub_id: @remate.prod_sub_id, sub_fecha_inicio: @remate.sub_fecha_inicio, sub_fecha_termino: @remate.sub_fecha_termino, sub_id: @remate.sub_id, sub_monto_max: @remate.sub_monto_max, usuario_id: @remate.usuario_id }
    end

    assert_redirected_to remate_path(assigns(:remate))
  end

  test "should show remate" do
    get :show, id: @remate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @remate
    assert_response :success
  end

  test "should update remate" do
    patch :update, id: @remate, remate: { estado_subasta_id: @remate.estado_subasta_id, prod_sub_id: @remate.prod_sub_id, sub_fecha_inicio: @remate.sub_fecha_inicio, sub_fecha_termino: @remate.sub_fecha_termino, sub_id: @remate.sub_id, sub_monto_max: @remate.sub_monto_max, usuario_id: @remate.usuario_id }
    assert_redirected_to remate_path(assigns(:remate))
  end

  test "should destroy remate" do
    assert_difference('Remate.count', -1) do
      delete :destroy, id: @remate
    end

    assert_redirected_to remates_path
  end
end
