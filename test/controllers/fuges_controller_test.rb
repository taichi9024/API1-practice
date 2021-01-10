require "test_helper"

class FugesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fuge = fuges(:one)
  end

  test "should get index" do
    get fuges_url
    assert_response :success
  end

  test "should get new" do
    get new_fuge_url
    assert_response :success
  end

  test "should create fuge" do
    assert_difference('Fuge.count') do
      post fuges_url, params: { fuge: { body: @fuge.body, title: @fuge.title } }
    end

    assert_redirected_to fuge_url(Fuge.last)
  end

  test "should show fuge" do
    get fuge_url(@fuge)
    assert_response :success
  end

  test "should get edit" do
    get edit_fuge_url(@fuge)
    assert_response :success
  end

  test "should update fuge" do
    patch fuge_url(@fuge), params: { fuge: { body: @fuge.body, title: @fuge.title } }
    assert_redirected_to fuge_url(@fuge)
  end

  test "should destroy fuge" do
    assert_difference('Fuge.count', -1) do
      delete fuge_url(@fuge)
    end

    assert_redirected_to fuges_url
  end
end
