require 'test_helper'

class ContactoPersonasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contacto_persona = contacto_personas(:one)
  end

  test "should get index" do
    get contacto_personas_url
    assert_response :success
  end

  test "should get new" do
    get new_contacto_persona_url
    assert_response :success
  end

  test "should create contacto_persona" do
    assert_difference('ContactoPersona.count') do
      post contacto_personas_url, params: { contacto_persona: { apellido_materno: @contacto_persona.apellido_materno, apellido_paterno: @contacto_persona.apellido_paterno, email: @contacto_persona.email, nombres: @contacto_persona.nombres, rut: @contacto_persona.rut, telefono: @contacto_persona.telefono } }
    end

    assert_redirected_to contacto_persona_url(ContactoPersona.last)
  end

  test "should show contacto_persona" do
    get contacto_persona_url(@contacto_persona)
    assert_response :success
  end

  test "should get edit" do
    get edit_contacto_persona_url(@contacto_persona)
    assert_response :success
  end

  test "should update contacto_persona" do
    patch contacto_persona_url(@contacto_persona), params: { contacto_persona: { apellido_materno: @contacto_persona.apellido_materno, apellido_paterno: @contacto_persona.apellido_paterno, email: @contacto_persona.email, nombres: @contacto_persona.nombres, rut: @contacto_persona.rut, telefono: @contacto_persona.telefono } }
    assert_redirected_to contacto_persona_url(@contacto_persona)
  end

  test "should destroy contacto_persona" do
    assert_difference('ContactoPersona.count', -1) do
      delete contacto_persona_url(@contacto_persona)
    end

    assert_redirected_to contacto_personas_url
  end
end
