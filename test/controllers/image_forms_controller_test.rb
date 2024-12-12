require "test_helper"

class ImageFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @image_form = image_forms(:one)
  end

  test "should get index" do
    get image_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_image_form_url
    assert_response :success
  end

  test "should create image_form" do
    assert_difference("ImageForm.count") do
      post image_forms_url, params: { image_form: { description: @image_form.description, name: @image_form.name } }
    end

    assert_redirected_to image_form_url(ImageForm.last)
  end

  test "should show image_form" do
    get image_form_url(@image_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_image_form_url(@image_form)
    assert_response :success
  end

  test "should update image_form" do
    patch image_form_url(@image_form), params: { image_form: { description: @image_form.description, name: @image_form.name } }
    assert_redirected_to image_form_url(@image_form)
  end

  test "should destroy image_form" do
    assert_difference("ImageForm.count", -1) do
      delete image_form_url(@image_form)
    end

    assert_redirected_to image_forms_url
  end
end
