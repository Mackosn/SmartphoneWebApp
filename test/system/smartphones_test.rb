require "application_system_test_case"

class SmartphonesTest < ApplicationSystemTestCase
  setup do
    @smartphone = smartphones(:one)
  end

  test "visiting the index" do
    visit smartphones_url
    assert_selector "h1", text: "Smartphones"
  end

  test "creating a Smartphone" do
    visit smartphones_url
    click_on "New Smartphone"

    fill_in "Camera", with: @smartphone.Camera
    fill_in "Model", with: @smartphone.Model
    fill_in "Name", with: @smartphone.Name
    fill_in "Processor", with: @smartphone.Processor
    fill_in "Ram memory", with: @smartphone.RAM_memory
    fill_in "Storage memory", with: @smartphone.Storage_memory
    click_on "Create Smartphone"

    assert_text "Smartphone was successfully created"
    click_on "Back"
  end

  test "updating a Smartphone" do
    visit smartphones_url
    click_on "Edit", match: :first

    fill_in "Camera", with: @smartphone.Camera
    fill_in "Model", with: @smartphone.Model
    fill_in "Name", with: @smartphone.Name
    fill_in "Processor", with: @smartphone.Processor
    fill_in "Ram memory", with: @smartphone.RAM_memory
    fill_in "Storage memory", with: @smartphone.Storage_memory
    click_on "Update Smartphone"

    assert_text "Smartphone was successfully updated"
    click_on "Back"
  end

  test "destroying a Smartphone" do
    visit smartphones_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Smartphone was successfully destroyed"
  end
end
