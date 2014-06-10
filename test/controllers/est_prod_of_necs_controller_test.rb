require 'test_helper'

class EstProdOfNecsControllerTest < ActionController::TestCase
  setup do
    @est_prod_of_nec = est_prod_of_necs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:est_prod_of_necs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create est_prod_of_nec" do
    assert_difference('EstProdOfNec.count') do
      post :create, est_prod_of_nec: { estado_prod_of_necesidad_id: @est_prod_of_nec.estado_prod_of_necesidad_id, estado_prod_of_necesidad_nombre: @est_prod_of_nec.estado_prod_of_necesidad_nombre }
    end

    assert_redirected_to est_prod_of_nec_path(assigns(:est_prod_of_nec))
  end

  test "should show est_prod_of_nec" do
    get :show, id: @est_prod_of_nec
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @est_prod_of_nec
    assert_response :success
  end

  test "should update est_prod_of_nec" do
    patch :update, id: @est_prod_of_nec, est_prod_of_nec: { estado_prod_of_necesidad_id: @est_prod_of_nec.estado_prod_of_necesidad_id, estado_prod_of_necesidad_nombre: @est_prod_of_nec.estado_prod_of_necesidad_nombre }
    assert_redirected_to est_prod_of_nec_path(assigns(:est_prod_of_nec))
  end

  test "should destroy est_prod_of_nec" do
    assert_difference('EstProdOfNec.count', -1) do
      delete :destroy, id: @est_prod_of_nec
    end

    assert_redirected_to est_prod_of_necs_path
  end
end
