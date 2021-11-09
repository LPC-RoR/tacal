require 'test_helper'

class BPalabrasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @b_palabra = b_palabras(:one)
  end

  test "should get index" do
    get b_palabras_url
    assert_response :success
  end

  test "should get new" do
    get new_b_palabra_url
    assert_response :success
  end

  test "should create b_palabra" do
    assert_difference('BPalabra.count') do
      post b_palabras_url, params: { b_palabra: { b_clave_id: @b_palabra.b_clave_id, b_palabra: @b_palabra.b_palabra } }
    end

    assert_redirected_to b_palabra_url(BPalabra.last)
  end

  test "should show b_palabra" do
    get b_palabra_url(@b_palabra)
    assert_response :success
  end

  test "should get edit" do
    get edit_b_palabra_url(@b_palabra)
    assert_response :success
  end

  test "should update b_palabra" do
    patch b_palabra_url(@b_palabra), params: { b_palabra: { b_clave_id: @b_palabra.b_clave_id, b_palabra: @b_palabra.b_palabra } }
    assert_redirected_to b_palabra_url(@b_palabra)
  end

  test "should destroy b_palabra" do
    assert_difference('BPalabra.count', -1) do
      delete b_palabra_url(@b_palabra)
    end

    assert_redirected_to b_palabras_url
  end
end
