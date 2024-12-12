require "application_system_test_case"

class ImageFormsTest < ApplicationSystemTestCase
  setup do
    @image_form = image_forms(:one)
  end

  test "visiting the index" do
    visit image_forms_url
    assert_selector "h1", text: "Image forms"
  end

  test "should create image form" do
    visit image_forms_url
    click_on "New image form"

    fill_in "Description", with: @image_form.description
    fill_in "Name", with: @image_form.name
    click_on "Create Image form"

    assert_text "Image form was successfully created"
    click_on "Back"
  end

  test "should update Image form" do
    visit image_form_url(@image_form)
    click_on "Edit this image form", match: :first

    fill_in "Description", with: @image_form.description
    fill_in "Name", with: @image_form.name
    click_on "Update Image form"

    assert_text "Image form was successfully updated"
    click_on "Back"
  end

  test "should destroy Image form" do
    visit image_form_url(@image_form)
    click_on "Destroy this image form", match: :first

    assert_text "Image form was successfully destroyed"
  end
end
