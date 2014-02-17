require 'test_helper'

class RemixersControllerTest < ActionController::TestCase
  setup do
    @remixer = remixers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:remixers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create remixer" do
    assert_difference('Remixer.count') do
      post :create, remixer: { artist_id: @remixer.artist_id, creator_id: @remixer.creator_id, song_id: @remixer.song_id }
    end

    assert_redirected_to remixer_path(assigns(:remixer))
  end

  test "should show remixer" do
    get :show, id: @remixer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @remixer
    assert_response :success
  end

  test "should update remixer" do
    patch :update, id: @remixer, remixer: { artist_id: @remixer.artist_id, creator_id: @remixer.creator_id, song_id: @remixer.song_id }
    assert_redirected_to remixer_path(assigns(:remixer))
  end

  test "should destroy remixer" do
    assert_difference('Remixer.count', -1) do
      delete :destroy, id: @remixer
    end

    assert_redirected_to remixers_path
  end
end
