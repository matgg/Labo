require 'test_helper'

class PrestamoInstrumentosControllerTest < ActionController::TestCase
  setup do
    @prestamo_instrumento = prestamo_instrumentos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prestamo_instrumentos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prestamo_instrumento" do
    assert_difference('PrestamoInstrumento.count') do
      post :create, prestamo_instrumento: { instrumento_codigo: @prestamo_instrumento.instrumento_codigo, persona_codigo: @prestamo_instrumento.persona_codigo, responsable_codigo: @prestamo_instrumento.responsable_codigo }
    end

    assert_redirected_to prestamo_instrumento_path(assigns(:prestamo_instrumento))
  end

  test "should show prestamo_instrumento" do
    get :show, id: @prestamo_instrumento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prestamo_instrumento
    assert_response :success
  end

  test "should update prestamo_instrumento" do
    put :update, id: @prestamo_instrumento, prestamo_instrumento: { instrumento_codigo: @prestamo_instrumento.instrumento_codigo, persona_codigo: @prestamo_instrumento.persona_codigo, responsable_codigo: @prestamo_instrumento.responsable_codigo }
    assert_redirected_to prestamo_instrumento_path(assigns(:prestamo_instrumento))
  end

  test "should destroy prestamo_instrumento" do
    assert_difference('PrestamoInstrumento.count', -1) do
      delete :destroy, id: @prestamo_instrumento
    end

    assert_redirected_to prestamo_instrumentos_path
  end
end
