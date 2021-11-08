require "test_helper"

class PhysiciansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @physician = physicians(:one)
  end

  test "should get index" do
    get physicians_url
    assert_response :success
  end

  test "should get new" do
    get new_physician_url
    assert_response :success
  end

  test "should create physician" do
    assert_difference('Physician.count') do
      post physicians_url, params: { physician: {  } }
    end

    assert_redirected_to physician_url(Physician.last)
  end

  test "should show physician" do
    get physician_url(@physician)
    assert_response :success
  end

  test "should get edit" do
    get edit_physician_url(@physician)
    assert_response :success
  end

  test "should update physician" do
    patch physician_url(@physician), params: { physician: {  } }
    assert_redirected_to physician_url(@physician)
  end

  test "should destroy physician" do
    assert_difference('Physician.count', -1) do
      delete physician_url(@physician)
    end

    assert_redirected_to physicians_url
  end
end
