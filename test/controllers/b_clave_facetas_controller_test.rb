require 'test_helper'

class BClaveFacetasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @b_clave_faceta = b_clave_facetas(:one)
  end

  test "should get index" do
    get b_clave_facetas_url
    assert_response :success
  end

  test "should get new" do
    get new_b_clave_faceta_url
    assert_response :success
  end

  test "should create b_clave_faceta" do
    assert_difference('BClaveFaceta.count') do
      post b_clave_facetas_url, params: { b_clave_faceta: { campo: @b_clave_faceta.campo, modelo: @b_clave_faceta.modelo, valor: @b_clave_faceta.valor } }
    end

    assert_redirected_to b_clave_faceta_url(BClaveFaceta.last)
  end

  test "should show b_clave_faceta" do
    get b_clave_faceta_url(@b_clave_faceta)
    assert_response :success
  end

  test "should get edit" do
    get edit_b_clave_faceta_url(@b_clave_faceta)
    assert_response :success
  end

  test "should update b_clave_faceta" do
    patch b_clave_faceta_url(@b_clave_faceta), params: { b_clave_faceta: { campo: @b_clave_faceta.campo, modelo: @b_clave_faceta.modelo, valor: @b_clave_faceta.valor } }
    assert_redirected_to b_clave_faceta_url(@b_clave_faceta)
  end

  test "should destroy b_clave_faceta" do
    assert_difference('BClaveFaceta.count', -1) do
      delete b_clave_faceta_url(@b_clave_faceta)
    end

    assert_redirected_to b_clave_facetas_url
  end
end
