require 'test_helper'

class PersonasControllerTest < ActionController::TestCase
  setup do
    @persona = personas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:personas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create persona" do
    assert_difference('Persona.count') do
      post :create, persona: { apellido: @persona.apellido, celular: @persona.celular, codigo: @persona.codigo, direccion: @persona.direccion, dni: @persona.dni, email: @persona.email, legajo: @persona.legajo, nacimiento: @persona.nacimiento, nombre: @persona.nombre, observacion: @persona.observacion, telefono: @persona.telefono }
    end

    assert_redirected_to persona_path(assigns(:persona))
  end

  test "should show persona" do
    get :show, id: @persona
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @persona
    assert_response :success
  end

  test "should update persona" do
    put :update, id: @persona, persona: { apellido: @persona.apellido, celular: @persona.celular, codigo: @persona.codigo, direccion: @persona.direccion, dni: @persona.dni, email: @persona.email, legajo: @persona.legajo, nacimiento: @persona.nacimiento, nombre: @persona.nombre, observacion: @persona.observacion, telefono: @persona.telefono }
    assert_redirected_to persona_path(assigns(:persona))
  end

  test "should destroy persona" do
    assert_difference('Persona.count', -1) do
      delete :destroy, id: @persona
    end

    assert_redirected_to personas_path
  end
end
