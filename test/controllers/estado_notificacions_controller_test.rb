require 'test_helper'

class EstadoNotificacionsControllerTest < ActionController::TestCase
  setup do
    @estado_notificacion = estado_notificacions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estado_notificacions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estado_notificacion" do
    assert_difference('EstadoNotificacion.count') do
      post :create, estado_notificacion: { estado_not_id: @estado_notificacion.estado_not_id, estado_not_nombre: @estado_notificacion.estado_not_nombre }
    end

    assert_redirected_to estado_notificacion_path(assigns(:estado_notificacion))
  end

  test "should show estado_notificacion" do
    get :show, id: @estado_notificacion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estado_notificacion
    assert_response :success
  end

  test "should update estado_notificacion" do
    patch :update, id: @estado_notificacion, estado_notificacion: { estado_not_id: @estado_notificacion.estado_not_id, estado_not_nombre: @estado_notificacion.estado_not_nombre }
    assert_redirected_to estado_notificacion_path(assigns(:estado_notificacion))
  end

  test "should destroy estado_notificacion" do
    assert_difference('EstadoNotificacion.count', -1) do
      delete :destroy, id: @estado_notificacion
    end

    assert_redirected_to estado_notificacions_path
  end
end
