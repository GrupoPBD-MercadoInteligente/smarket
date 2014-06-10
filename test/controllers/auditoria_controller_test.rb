require 'test_helper'

class AuditoriaControllerTest < ActionController::TestCase
  setup do
    @auditorium = auditoria(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:auditoria)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create auditorium" do
    assert_difference('Auditorium.count') do
      post :create, auditorium: { auditoria_antes: @auditorium.auditoria_antes, auditoria_attr_mod: @auditorium.auditoria_attr_mod, auditoria_despues: @auditorium.auditoria_despues, auditoria_fecha: @auditorium.auditoria_fecha, auditoria_id: @auditorium.auditoria_id, auditoria_operacion: @auditorium.auditoria_operacion, auditoria_tabla_mod: @auditorium.auditoria_tabla_mod, auditoria_usuario: @auditorium.auditoria_usuario }
    end

    assert_redirected_to auditorium_path(assigns(:auditorium))
  end

  test "should show auditorium" do
    get :show, id: @auditorium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @auditorium
    assert_response :success
  end

  test "should update auditorium" do
    patch :update, id: @auditorium, auditorium: { auditoria_antes: @auditorium.auditoria_antes, auditoria_attr_mod: @auditorium.auditoria_attr_mod, auditoria_despues: @auditorium.auditoria_despues, auditoria_fecha: @auditorium.auditoria_fecha, auditoria_id: @auditorium.auditoria_id, auditoria_operacion: @auditorium.auditoria_operacion, auditoria_tabla_mod: @auditorium.auditoria_tabla_mod, auditoria_usuario: @auditorium.auditoria_usuario }
    assert_redirected_to auditorium_path(assigns(:auditorium))
  end

  test "should destroy auditorium" do
    assert_difference('Auditorium.count', -1) do
      delete :destroy, id: @auditorium
    end

    assert_redirected_to auditoria_path
  end
end
