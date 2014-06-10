require 'test_helper'

class EstadoRematesControllerTest < ActionController::TestCase
  setup do
    @estado_remate = estado_remates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estado_remates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estado_remate" do
    assert_difference('EstadoRemate.count') do
      post :create, estado_remate: { estado_subasta_id: @estado_remate.estado_subasta_id, estado_subasta_nombre: @estado_remate.estado_subasta_nombre }
    end

    assert_redirected_to estado_remate_path(assigns(:estado_remate))
  end

  test "should show estado_remate" do
    get :show, id: @estado_remate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estado_remate
    assert_response :success
  end

  test "should update estado_remate" do
    patch :update, id: @estado_remate, estado_remate: { estado_subasta_id: @estado_remate.estado_subasta_id, estado_subasta_nombre: @estado_remate.estado_subasta_nombre }
    assert_redirected_to estado_remate_path(assigns(:estado_remate))
  end

  test "should destroy estado_remate" do
    assert_difference('EstadoRemate.count', -1) do
      delete :destroy, id: @estado_remate
    end

    assert_redirected_to estado_remates_path
  end
end
