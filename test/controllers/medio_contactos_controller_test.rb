require 'test_helper'

class MedioContactosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @medio_contacto = medio_contactos(:one)
  end

  test "should get index" do
    get medio_contactos_url
    assert_response :success
  end

  test "should get new" do
    get new_medio_contacto_url
    assert_response :success
  end

  test "should create medio_contacto" do
    assert_difference('MedioContacto.count') do
      post medio_contactos_url, params: { medio_contacto: { medio_contacto: @medio_contacto.medio_contacto } }
    end

    assert_redirected_to medio_contacto_url(MedioContacto.last)
  end

  test "should show medio_contacto" do
    get medio_contacto_url(@medio_contacto)
    assert_response :success
  end

  test "should get edit" do
    get edit_medio_contacto_url(@medio_contacto)
    assert_response :success
  end

  test "should update medio_contacto" do
    patch medio_contacto_url(@medio_contacto), params: { medio_contacto: { medio_contacto: @medio_contacto.medio_contacto } }
    assert_redirected_to medio_contacto_url(@medio_contacto)
  end

  test "should destroy medio_contacto" do
    assert_difference('MedioContacto.count', -1) do
      delete medio_contacto_url(@medio_contacto)
    end

    assert_redirected_to medio_contactos_url
  end
end
