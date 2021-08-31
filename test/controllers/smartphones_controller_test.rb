require "test_helper"

class SmartphonesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @smartphone = smartphones(:one)
  end

  test "should get index" do
    get smartphones_url
    assert_response :success
  end

  test "should get new" do
    get new_smartphone_url
    assert_response :success
  end

  test "should create smartphone" do
    assert_difference('Smartphone.count') do
      post smartphones_url, params: { smartphone: { Camera: @smartphone.Camera, Model: @smartphone.Model, Name: @smartphone.Name, Processor: @smartphone.Processor, RAM_memory: @smartphone.RAM_memory, Storage_memory: @smartphone.Storage_memory } }
    end

    assert_redirected_to smartphone_url(Smartphone.last)
  end

  test "should show smartphone" do
    get smartphone_url(@smartphone)
    assert_response :success
  end

  test "should get edit" do
    get edit_smartphone_url(@smartphone)
    assert_response :success
  end

  test "should update smartphone" do
    patch smartphone_url(@smartphone), params: { smartphone: { Camera: @smartphone.Camera, Model: @smartphone.Model, Name: @smartphone.Name, Processor: @smartphone.Processor, RAM_memory: @smartphone.RAM_memory, Storage_memory: @smartphone.Storage_memory } }
    assert_redirected_to smartphone_url(@smartphone)
  end

  test "should destroy smartphone" do
    assert_difference('Smartphone.count', -1) do
      delete smartphone_url(@smartphone)
    end

    assert_redirected_to smartphones_url
  end
end
