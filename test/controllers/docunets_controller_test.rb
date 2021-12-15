require "test_helper"

class DocunetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @docunet = docunets(:one)
  end

  test "should get index" do
    get docunets_url
    assert_response :success
  end

  test "should get new" do
    get new_docunet_url
    assert_response :success
  end

  test "should create docunet" do
    assert_difference('Docunet.count') do
      post docunets_url, params: { docunet: { name_document: @docunet.name_document, note: @docunet.note, second_column: @docunet.second_column } }
    end

    assert_redirected_to docunet_url(Docunet.last)
  end

  test "should show docunet" do
    get docunet_url(@docunet)
    assert_response :success
  end

  test "should get edit" do
    get edit_docunet_url(@docunet)
    assert_response :success
  end

  test "should update docunet" do
    patch docunet_url(@docunet), params: { docunet: { name_document: @docunet.name_document, note: @docunet.note, second_column: @docunet.second_column } }
    assert_redirected_to docunet_url(@docunet)
  end

  test "should destroy docunet" do
    assert_difference('Docunet.count', -1) do
      delete docunet_url(@docunet)
    end

    assert_redirected_to docunets_url
  end
end
