require 'test_helper'

class AdventuesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @adventue = adventues(:one)
  end

  test "should get index" do
    get adventues_url
    assert_response :success
  end

  test "should get new" do
    get new_adventue_url
    assert_response :success
  end

  test "should create adventue" do
    assert_difference('Adventue.count') do
      post adventues_url, params: { adventue: { carla: @adventue.carla } }
    end

    assert_redirected_to adventue_url(Adventue.last)
  end

  test "should show adventue" do
    get adventue_url(@adventue)
    assert_response :success
  end

  test "should get edit" do
    get edit_adventue_url(@adventue)
    assert_response :success
  end

  test "should update adventue" do
    patch adventue_url(@adventue), params: { adventue: { carla: @adventue.carla } }
    assert_redirected_to adventue_url(@adventue)
  end

  test "should destroy adventue" do
    assert_difference('Adventue.count', -1) do
      delete adventue_url(@adventue)
    end

    assert_redirected_to adventues_url
  end
end
