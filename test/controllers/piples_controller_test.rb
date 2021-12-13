require "test_helper"

class PiplesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @piple = piples(:one)
  end

  test "should get index" do
    get piples_url
    assert_response :success
  end

  test "should get new" do
    get new_piple_url
    assert_response :success
  end

  test "should create piple" do
    assert_difference('Piple.count') do
      post piples_url, params: { piple: { beardth_date: @piple.beardth_date, customer_id: @piple.customer_id, email: @piple.email, first_name: @piple.first_name, last_name: @piple.last_name, other_date: @piple.other_date, parens_name: @piple.parens_name, phone: @piple.phone, sex: @piple.sex } }
    end

    assert_redirected_to piple_url(Piple.last)
  end

  test "should show piple" do
    get piple_url(@piple)
    assert_response :success
  end

  test "should get edit" do
    get edit_piple_url(@piple)
    assert_response :success
  end

  test "should update piple" do
    patch piple_url(@piple), params: { piple: { beardth_date: @piple.beardth_date, customer_id: @piple.customer_id, email: @piple.email, first_name: @piple.first_name, last_name: @piple.last_name, other_date: @piple.other_date, parens_name: @piple.parens_name, phone: @piple.phone, sex: @piple.sex } }
    assert_redirected_to piple_url(@piple)
  end

  test "should destroy piple" do
    assert_difference('Piple.count', -1) do
      delete piple_url(@piple)
    end

    assert_redirected_to piples_url
  end
end
