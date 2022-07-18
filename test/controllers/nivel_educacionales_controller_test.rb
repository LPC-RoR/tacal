require 'test_helper'

class NivelEducacionalesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nivel_educacional = nivel_educacionales(:one)
  end

  test "should get index" do
    get nivel_educacionales_url
    assert_response :success
  end

  test "should get new" do
    get new_nivel_educacional_url
    assert_response :success
  end

  test "should create nivel_educacional" do
    assert_difference('NivelEducacional.count') do
      post nivel_educacionales_url, params: { nivel_educacional: { nivel_educacional: @nivel_educacional.nivel_educacional } }
    end

    assert_redirected_to nivel_educacional_url(NivelEducacional.last)
  end

  test "should show nivel_educacional" do
    get nivel_educacional_url(@nivel_educacional)
    assert_response :success
  end

  test "should get edit" do
    get edit_nivel_educacional_url(@nivel_educacional)
    assert_response :success
  end

  test "should update nivel_educacional" do
    patch nivel_educacional_url(@nivel_educacional), params: { nivel_educacional: { nivel_educacional: @nivel_educacional.nivel_educacional } }
    assert_redirected_to nivel_educacional_url(@nivel_educacional)
  end

  test "should destroy nivel_educacional" do
    assert_difference('NivelEducacional.count', -1) do
      delete nivel_educacional_url(@nivel_educacional)
    end

    assert_redirected_to nivel_educacionales_url
  end
end
