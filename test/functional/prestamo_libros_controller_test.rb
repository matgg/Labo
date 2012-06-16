require 'test_helper'

class PrestamoLibrosControllerTest < ActionController::TestCase
  setup do
    @prestamo_libro = prestamo_libros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prestamo_libros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prestamo_libro" do
    assert_difference('PrestamoLibro.count') do
      post :create, prestamo_libro: { libro_codigo: @prestamo_libro.libro_codigo, persona_codigo: @prestamo_libro.persona_codigo, responsable_codigo: @prestamo_libro.responsable_codigo }
    end

    assert_redirected_to prestamo_libro_path(assigns(:prestamo_libro))
  end

  test "should show prestamo_libro" do
    get :show, id: @prestamo_libro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prestamo_libro
    assert_response :success
  end

  test "should update prestamo_libro" do
    put :update, id: @prestamo_libro, prestamo_libro: { libro_codigo: @prestamo_libro.libro_codigo, persona_codigo: @prestamo_libro.persona_codigo, responsable_codigo: @prestamo_libro.responsable_codigo }
    assert_redirected_to prestamo_libro_path(assigns(:prestamo_libro))
  end

  test "should destroy prestamo_libro" do
    assert_difference('PrestamoLibro.count', -1) do
      delete :destroy, id: @prestamo_libro
    end

    assert_redirected_to prestamo_libros_path
  end
end
