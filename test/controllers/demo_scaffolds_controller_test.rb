require 'test_helper'

class DemoScaffoldsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @demo_scaffold = demo_scaffolds(:one)
  end

  test "should get index" do
    get demo_scaffolds_url
    assert_response :success
  end

  test "should get new" do
    get new_demo_scaffold_url
    assert_response :success
  end

  test "should create demo_scaffold" do
    assert_difference('DemoScaffold.count') do
      post demo_scaffolds_url, params: { demo_scaffold: { name: @demo_scaffold.name } }
    end

    assert_redirected_to demo_scaffold_url(DemoScaffold.last)
  end

  test "should show demo_scaffold" do
    get demo_scaffold_url(@demo_scaffold)
    assert_response :success
  end

  test "should get edit" do
    get edit_demo_scaffold_url(@demo_scaffold)
    assert_response :success
  end

  test "should update demo_scaffold" do
    patch demo_scaffold_url(@demo_scaffold), params: { demo_scaffold: { name: @demo_scaffold.name } }
    assert_redirected_to demo_scaffold_url(@demo_scaffold)
  end

  test "should destroy demo_scaffold" do
    assert_difference('DemoScaffold.count', -1) do
      delete demo_scaffold_url(@demo_scaffold)
    end

    assert_redirected_to demo_scaffolds_url
  end
end
