require 'test_helper'

class ContactoEmpresasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contacto_empresa = contacto_empresas(:one)
  end

  test "should get index" do
    get contacto_empresas_url
    assert_response :success
  end

  test "should get new" do
    get new_contacto_empresa_url
    assert_response :success
  end

  test "should create contacto_empresa" do
    assert_difference('ContactoEmpresa.count') do
      post contacto_empresas_url, params: { contacto_empresa: { direccion: @contacto_empresa.direccion, razon_social: @contacto_empresa.razon_social, rut: @contacto_empresa.rut } }
    end

    assert_redirected_to contacto_empresa_url(ContactoEmpresa.last)
  end

  test "should show contacto_empresa" do
    get contacto_empresa_url(@contacto_empresa)
    assert_response :success
  end

  test "should get edit" do
    get edit_contacto_empresa_url(@contacto_empresa)
    assert_response :success
  end

  test "should update contacto_empresa" do
    patch contacto_empresa_url(@contacto_empresa), params: { contacto_empresa: { direccion: @contacto_empresa.direccion, razon_social: @contacto_empresa.razon_social, rut: @contacto_empresa.rut } }
    assert_redirected_to contacto_empresa_url(@contacto_empresa)
  end

  test "should destroy contacto_empresa" do
    assert_difference('ContactoEmpresa.count', -1) do
      delete contacto_empresa_url(@contacto_empresa)
    end

    assert_redirected_to contacto_empresas_url
  end
end
