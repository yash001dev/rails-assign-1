require "test_helper"

class AppoinmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @appoinment = appoinments(:one)
  end

  test "should get index" do
    get appoinments_url
    assert_response :success
  end

  test "should get new" do
    get new_appoinment_url
    assert_response :success
  end

  test "should create appoinment" do
    assert_difference('Appoinment.count') do
      post appoinments_url, params: { appoinment: {  } }
    end

    assert_redirected_to appoinment_url(Appoinment.last)
  end

  test "should show appoinment" do
    get appoinment_url(@appoinment)
    assert_response :success
  end

  test "should get edit" do
    get edit_appoinment_url(@appoinment)
    assert_response :success
  end

  test "should update appoinment" do
    patch appoinment_url(@appoinment), params: { appoinment: {  } }
    assert_redirected_to appoinment_url(@appoinment)
  end

  test "should destroy appoinment" do
    assert_difference('Appoinment.count', -1) do
      delete appoinment_url(@appoinment)
    end

    assert_redirected_to appoinments_url
  end
end
