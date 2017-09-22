require 'test_helper'

class AnnkissamersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @annkissamer = annkissamers(:one)
  end

  test "should get index" do
    get annkissamers_url
    assert_response :success
  end

  test "should get new" do
    get new_annkissamer_url
    assert_response :success
  end

  test "should create annkissamer" do
    assert_difference('Annkissamer.count') do
      post annkissamers_url, params: { annkissamer: { email: @annkissamer.email, first_name: @annkissamer.first_name, last_name: @annkissamer.last_name } }
    end

    assert_redirected_to annkissamer_url(Annkissamer.last)
  end

  test "should show annkissamer" do
    get annkissamer_url(@annkissamer)
    assert_response :success
  end

  test "should get edit" do
    get edit_annkissamer_url(@annkissamer)
    assert_response :success
  end

  test "should update annkissamer" do
    patch annkissamer_url(@annkissamer), params: { annkissamer: { email: @annkissamer.email, first_name: @annkissamer.first_name, last_name: @annkissamer.last_name } }
    assert_redirected_to annkissamer_url(@annkissamer)
  end

  test "should destroy annkissamer" do
    assert_difference('Annkissamer.count', -1) do
      delete annkissamer_url(@annkissamer)
    end

    assert_redirected_to annkissamers_url
  end
end
