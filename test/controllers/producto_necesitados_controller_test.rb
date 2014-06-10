require 'test_helper'

class ProductoNecesitadosControllerTest < ActionController::TestCase
  setup do
    @producto_necesitado = producto_necesitados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:producto_necesitados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create producto_necesitado" do
    assert_difference('ProductoNecesitado.count') do
      post :create, producto_necesitado: { prod_nec_cantidad: @producto_necesitado.prod_nec_cantidad, prod_nec_fecha_publicacion: @producto_necesitado.prod_nec_fecha_publicacion, prod_nec_id: @producto_necesitado.prod_nec_id, prod_nec_preciotope: @producto_necesitado.prod_nec_preciotope, producto_id: @producto_necesitado.producto_id, usuario_id: @producto_necesitado.usuario_id }
    end

    assert_redirected_to producto_necesitado_path(assigns(:producto_necesitado))
  end

  test "should show producto_necesitado" do
    get :show, id: @producto_necesitado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @producto_necesitado
    assert_response :success
  end

  test "should update producto_necesitado" do
    patch :update, id: @producto_necesitado, producto_necesitado: { prod_nec_cantidad: @producto_necesitado.prod_nec_cantidad, prod_nec_fecha_publicacion: @producto_necesitado.prod_nec_fecha_publicacion, prod_nec_id: @producto_necesitado.prod_nec_id, prod_nec_preciotope: @producto_necesitado.prod_nec_preciotope, producto_id: @producto_necesitado.producto_id, usuario_id: @producto_necesitado.usuario_id }
    assert_redirected_to producto_necesitado_path(assigns(:producto_necesitado))
  end

  test "should destroy producto_necesitado" do
    assert_difference('ProductoNecesitado.count', -1) do
      delete :destroy, id: @producto_necesitado
    end

    assert_redirected_to producto_necesitados_path
  end
end
