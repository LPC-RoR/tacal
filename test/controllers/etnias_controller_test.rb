require 'test_helper'

class EtniasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @etnia = etnias(:one)
  end

  test "should get index" do
    get etnias_url
    assert_response :success
  end

  test "should get new" do
    get new_etnia_url
    assert_response :success
  end

  test "should create etnia" do
    assert_difference('Etnia.count') do
      post etnias_url, params: { etnia: { etnia: @etnia.etnia } }
    end

    assert_redirected_to etnia_url(Etnia.last)
  end

  test "should show etnia" do
    get etnia_url(@etnia)
    assert_response :success
  end

  test "should get edit" do
    get edit_etnia_url(@etnia)
    assert_response :success
  end

  test "should update etnia" do
    patch etnia_url(@etnia), params: { etnia: { etnia: @etnia.etnia } }
    assert_redirected_to etnia_url(@etnia)
  end

  test "should destroy etnia" do
    assert_difference('Etnia.count', -1) do
      delete etnia_url(@etnia)
    end

    assert_redirected_to etnias_url
  end
end
