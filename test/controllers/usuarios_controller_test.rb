require 'test_helper'

class UsuariosControllerTest < ActionController::TestCase
  setup do
    @usuario = usuarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usuarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usuario" do
    assert_difference('Usuario.count') do
      post :create, usuario: { comuna_id: @usuario.comuna_id, usuario_apellidomat: @usuario.usuario_apellidomat, usuario_apellidopat: @usuario.usuario_apellidopat, usuario_bloque: @usuario.usuario_bloque, usuario_calle: @usuario.usuario_calle, usuario_contrasena: @usuario.usuario_contrasena, usuario_e_mail: @usuario.usuario_e_mail, usuario_id: @usuario.usuario_id, usuario_nombre: @usuario.usuario_nombre, usuario_nombre_usuario: @usuario.usuario_nombre_usuario, usuario_numero_calle: @usuario.usuario_numero_calle, usuario_numero_depto: @usuario.usuario_numero_depto, usuario_rut: @usuario.usuario_rut, usuario_villa: @usuario.usuario_villa, usuario_vip: @usuario.usuario_vip }
    end

    assert_redirected_to usuario_path(assigns(:usuario))
  end

  test "should show usuario" do
    get :show, id: @usuario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @usuario
    assert_response :success
  end

  test "should update usuario" do
    patch :update, id: @usuario, usuario: { comuna_id: @usuario.comuna_id, usuario_apellidomat: @usuario.usuario_apellidomat, usuario_apellidopat: @usuario.usuario_apellidopat, usuario_bloque: @usuario.usuario_bloque, usuario_calle: @usuario.usuario_calle, usuario_contrasena: @usuario.usuario_contrasena, usuario_e_mail: @usuario.usuario_e_mail, usuario_id: @usuario.usuario_id, usuario_nombre: @usuario.usuario_nombre, usuario_nombre_usuario: @usuario.usuario_nombre_usuario, usuario_numero_calle: @usuario.usuario_numero_calle, usuario_numero_depto: @usuario.usuario_numero_depto, usuario_rut: @usuario.usuario_rut, usuario_villa: @usuario.usuario_villa, usuario_vip: @usuario.usuario_vip }
    assert_redirected_to usuario_path(assigns(:usuario))
  end

  test "should destroy usuario" do
    assert_difference('Usuario.count', -1) do
      delete :destroy, id: @usuario
    end

    assert_redirected_to usuarios_path
  end
end
