require 'test_helper'

class AddvsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @addv = addvs(:one)
  end

  test "should get index" do
    get addvs_url
    assert_response :success
  end

  test "should get new" do
    get new_addv_url
    assert_response :success
  end

  test "should create addv" do
    assert_difference('Addv.count') do
      post addvs_url, params: { addv: { addv_date: @addv.addv_date, addv_title: @addv.addv_title, city_id: @addv.city_id, image: @addv.image, last_date: @addv.last_date, newspaper_id: @addv.newspaper_id, organization_id: @addv.organization_id } }
    end

    assert_redirected_to addv_url(Addv.last)
  end

  test "should show addv" do
    get addv_url(@addv)
    assert_response :success
  end

  test "should get edit" do
    get edit_addv_url(@addv)
    assert_response :success
  end

  test "should update addv" do
    patch addv_url(@addv), params: { addv: { addv_date: @addv.addv_date, addv_title: @addv.addv_title, city_id: @addv.city_id, image: @addv.image, last_date: @addv.last_date, newspaper_id: @addv.newspaper_id, organization_id: @addv.organization_id } }
    assert_redirected_to addv_url(@addv)
  end

  test "should destroy addv" do
    assert_difference('Addv.count', -1) do
      delete addv_url(@addv)
    end

    assert_redirected_to addvs_url
  end
end
