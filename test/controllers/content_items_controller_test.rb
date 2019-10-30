require 'test_helper'

class ContentItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @content_item = content_items(:one)
  end

  test "should get index" do
    get content_items_url
    assert_response :success
  end

  test "should get new" do
    get new_content_item_url
    assert_response :success
  end

  test "should create content_item" do
    assert_difference('ContentItem.count') do
      post content_items_url, params: { content_item: { authors: @content_item.authors, description: @content_item.description, title: @content_item.title } }
    end

    assert_redirected_to content_item_url(ContentItem.last)
  end

  test "should show content_item" do
    get content_item_url(@content_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_content_item_url(@content_item)
    assert_response :success
  end

  test "should update content_item" do
    patch content_item_url(@content_item), params: { content_item: { authors: @content_item.authors, description: @content_item.description, title: @content_item.title } }
    assert_redirected_to content_item_url(@content_item)
  end

  test "should destroy content_item" do
    assert_difference('ContentItem.count', -1) do
      delete content_item_url(@content_item)
    end

    assert_redirected_to content_items_url
  end
end
