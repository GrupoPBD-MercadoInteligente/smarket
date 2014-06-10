require 'test_helper'

class ProductoOfertadosControllerTest < ActionController::TestCase
  setup do
    @producto_ofertado = producto_ofertados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:producto_ofertados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create producto_ofertado" do
    assert_difference('ProductoOfertado.count') do
      post :create, producto_ofertado: { producto_id: @producto_ofertado.producto_id, producto_of_cantidad: @producto_ofertado.producto_of_cantidad, producto_of_fecha_publicacion: @producto_ofertado.producto_of_fecha_publicacion, producto_of_id: @producto_ofertado.producto_of_id, producto_of_precio_unitario: @producto_ofertado.producto_of_precio_unitario, usuario_id: @producto_ofertado.usuario_id }
    end

    assert_redirected_to producto_ofertado_path(assigns(:producto_ofertado))
  end

  test "should show producto_ofertado" do
    get :show, id: @producto_ofertado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @producto_ofertado
    assert_response :success
  end

  test "should update producto_ofertado" do
    patch :update, id: @producto_ofertado, producto_ofertado: { producto_id: @producto_ofertado.producto_id, producto_of_cantidad: @producto_ofertado.producto_of_cantidad, producto_of_fecha_publicacion: @producto_ofertado.producto_of_fecha_publicacion, producto_of_id: @producto_ofertado.producto_of_id, producto_of_precio_unitario: @producto_ofertado.producto_of_precio_unitario, usuario_id: @producto_ofertado.usuario_id }
    assert_redirected_to producto_ofertado_path(assigns(:producto_ofertado))
  end

  test "should destroy producto_ofertado" do
    assert_difference('ProductoOfertado.count', -1) do
      delete :destroy, id: @producto_ofertado
    end

    assert_redirected_to producto_ofertados_path
  end
end
