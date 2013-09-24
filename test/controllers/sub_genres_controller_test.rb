require 'test_helper'

class SubGenresControllerTest < ActionController::TestCase
  setup do
    @sub_genre = sub_genres(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sub_genres)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sub_genre" do
    assert_difference('SubGenre.count') do
      post :create, sub_genre: { child_genre_id: @sub_genre.child_genre_id, parent_genre_id: @sub_genre.parent_genre_id }
    end

    assert_redirected_to sub_genre_path(assigns(:sub_genre))
  end

  test "should show sub_genre" do
    get :show, id: @sub_genre
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sub_genre
    assert_response :success
  end

  test "should update sub_genre" do
    patch :update, id: @sub_genre, sub_genre: { child_genre_id: @sub_genre.child_genre_id, parent_genre_id: @sub_genre.parent_genre_id }
    assert_redirected_to sub_genre_path(assigns(:sub_genre))
  end

  test "should destroy sub_genre" do
    assert_difference('SubGenre.count', -1) do
      delete :destroy, id: @sub_genre
    end

    assert_redirected_to sub_genres_path
  end
end
