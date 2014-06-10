require 'test_helper'

class ProdOfNecsControllerTest < ActionController::TestCase
  setup do
    @prod_of_nec = prod_of_necs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prod_of_necs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prod_of_nec" do
    assert_difference('ProdOfNec.count') do
      post :create, prod_of_nec: { estado_prod_of_necesidad_id: @prod_of_nec.estado_prod_of_necesidad_id, prod_nec_id: @prod_of_nec.prod_nec_id, prod_of_nec_cantidad: @prod_of_nec.prod_of_nec_cantidad, prod_of_nec_fecha_publicacion: @prod_of_nec.prod_of_nec_fecha_publicacion, prod_of_nec_id: @prod_of_nec.prod_of_nec_id, prod_of_nec_precio_unitario: @prod_of_nec.prod_of_nec_precio_unitario, producto_id: @prod_of_nec.producto_id, usuario_id: @prod_of_nec.usuario_id }
    end

    assert_redirected_to prod_of_nec_path(assigns(:prod_of_nec))
  end

  test "should show prod_of_nec" do
    get :show, id: @prod_of_nec
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prod_of_nec
    assert_response :success
  end

  test "should update prod_of_nec" do
    patch :update, id: @prod_of_nec, prod_of_nec: { estado_prod_of_necesidad_id: @prod_of_nec.estado_prod_of_necesidad_id, prod_nec_id: @prod_of_nec.prod_nec_id, prod_of_nec_cantidad: @prod_of_nec.prod_of_nec_cantidad, prod_of_nec_fecha_publicacion: @prod_of_nec.prod_of_nec_fecha_publicacion, prod_of_nec_id: @prod_of_nec.prod_of_nec_id, prod_of_nec_precio_unitario: @prod_of_nec.prod_of_nec_precio_unitario, producto_id: @prod_of_nec.producto_id, usuario_id: @prod_of_nec.usuario_id }
    assert_redirected_to prod_of_nec_path(assigns(:prod_of_nec))
  end

  test "should destroy prod_of_nec" do
    assert_difference('ProdOfNec.count', -1) do
      delete :destroy, id: @prod_of_nec
    end

    assert_redirected_to prod_of_necs_path
  end
end
