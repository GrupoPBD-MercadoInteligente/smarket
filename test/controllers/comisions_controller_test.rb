require 'test_helper'

class ComisionsControllerTest < ActionController::TestCase
  setup do
    @comision = comisions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comisions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comision" do
    assert_difference('Comision.count') do
      post :create, comision: { comision_id: @comision.comision_id, comision_monto: @comision.comision_monto, transaccion_id: @comision.transaccion_id }
    end

    assert_redirected_to comision_path(assigns(:comision))
  end

  test "should show comision" do
    get :show, id: @comision
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comision
    assert_response :success
  end

  test "should update comision" do
    patch :update, id: @comision, comision: { comision_id: @comision.comision_id, comision_monto: @comision.comision_monto, transaccion_id: @comision.transaccion_id }
    assert_redirected_to comision_path(assigns(:comision))
  end

  test "should destroy comision" do
    assert_difference('Comision.count', -1) do
      delete :destroy, id: @comision
    end

    assert_redirected_to comisions_path
  end
end
