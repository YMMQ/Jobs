require 'test_helper'

class TDegreesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @t_degree = t_degrees(:one)
  end

  test "should get index" do
    get t_degrees_url
    assert_response :success
  end

  test "should get new" do
    get new_t_degree_url
    assert_response :success
  end

  test "should create t_degree" do
    assert_difference('TDegree.count') do
      post t_degrees_url, params: { t_degree: { name: @t_degree.name } }
    end

    assert_redirected_to t_degree_url(TDegree.last)
  end

  test "should show t_degree" do
    get t_degree_url(@t_degree)
    assert_response :success
  end

  test "should get edit" do
    get edit_t_degree_url(@t_degree)
    assert_response :success
  end

  test "should update t_degree" do
    patch t_degree_url(@t_degree), params: { t_degree: { name: @t_degree.name } }
    assert_redirected_to t_degree_url(@t_degree)
  end

  test "should destroy t_degree" do
    assert_difference('TDegree.count', -1) do
      delete t_degree_url(@t_degree)
    end

    assert_redirected_to t_degrees_url
  end
end
