require 'test_helper'

class BReglasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @b_regla = b_reglas(:one)
  end

  test "should get index" do
    get b_reglas_url
    assert_response :success
  end

  test "should get new" do
    get new_b_regla_url
    assert_response :success
  end

  test "should create b_regla" do
    assert_difference('BRegla.count') do
      post b_reglas_url, params: { b_regla: { accion: @b_regla.accion, b_regla: @b_regla.b_regla, idioma: @b_regla.idioma, tipo_palabra: @b_regla.tipo_palabra } }
    end

    assert_redirected_to b_regla_url(BRegla.last)
  end

  test "should show b_regla" do
    get b_regla_url(@b_regla)
    assert_response :success
  end

  test "should get edit" do
    get edit_b_regla_url(@b_regla)
    assert_response :success
  end

  test "should update b_regla" do
    patch b_regla_url(@b_regla), params: { b_regla: { accion: @b_regla.accion, b_regla: @b_regla.b_regla, idioma: @b_regla.idioma, tipo_palabra: @b_regla.tipo_palabra } }
    assert_redirected_to b_regla_url(@b_regla)
  end

  test "should destroy b_regla" do
    assert_difference('BRegla.count', -1) do
      delete b_regla_url(@b_regla)
    end

    assert_redirected_to b_reglas_url
  end
end
