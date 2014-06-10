require 'test_helper'

class GananciaLiquidasControllerTest < ActionController::TestCase
  setup do
    @ganancia_liquida = ganancia_liquidas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ganancia_liquidas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ganancia_liquida" do
    assert_difference('GananciaLiquida.count') do
      post :create, ganancia_liquida: { ganancia_liquida_id: @ganancia_liquida.ganancia_liquida_id, ganancia_liquida_monto: @ganancia_liquida.ganancia_liquida_monto, transaccion_id: @ganancia_liquida.transaccion_id }
    end

    assert_redirected_to ganancia_liquida_path(assigns(:ganancia_liquida))
  end

  test "should show ganancia_liquida" do
    get :show, id: @ganancia_liquida
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ganancia_liquida
    assert_response :success
  end

  test "should update ganancia_liquida" do
    patch :update, id: @ganancia_liquida, ganancia_liquida: { ganancia_liquida_id: @ganancia_liquida.ganancia_liquida_id, ganancia_liquida_monto: @ganancia_liquida.ganancia_liquida_monto, transaccion_id: @ganancia_liquida.transaccion_id }
    assert_redirected_to ganancia_liquida_path(assigns(:ganancia_liquida))
  end

  test "should destroy ganancia_liquida" do
    assert_difference('GananciaLiquida.count', -1) do
      delete :destroy, id: @ganancia_liquida
    end

    assert_redirected_to ganancia_liquidas_path
  end
end
