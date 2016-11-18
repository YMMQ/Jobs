require 'test_helper'

class AddProfessionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @add_profession = add_professions(:one)
  end

  test "should get index" do
    get add_professions_url
    assert_response :success
  end

  test "should get new" do
    get new_add_profession_url
    assert_response :success
  end

  test "should create add_profession" do
    assert_difference('AddProfession.count') do
      post add_professions_url, params: { add_profession: { add_id: @add_profession.add_id, profession_id: @add_profession.profession_id, qty: @add_profession.qty } }
    end

    assert_redirected_to add_profession_url(AddProfession.last)
  end

  test "should show add_profession" do
    get add_profession_url(@add_profession)
    assert_response :success
  end

  test "should get edit" do
    get edit_add_profession_url(@add_profession)
    assert_response :success
  end

  test "should update add_profession" do
    patch add_profession_url(@add_profession), params: { add_profession: { add_id: @add_profession.add_id, profession_id: @add_profession.profession_id, qty: @add_profession.qty } }
    assert_redirected_to add_profession_url(@add_profession)
  end

  test "should destroy add_profession" do
    assert_difference('AddProfession.count', -1) do
      delete add_profession_url(@add_profession)
    end

    assert_redirected_to add_professions_url
  end
end
