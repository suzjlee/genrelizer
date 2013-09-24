require 'test_helper'

class GenreDescriptionsControllerTest < ActionController::TestCase
  setup do
    @genre_description = genre_descriptions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:genre_descriptions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create genre_description" do
    assert_difference('GenreDescription.count') do
      post :create, genre_description: { description_id: @genre_description.description_id, genre_id: @genre_description.genre_id }
    end

    assert_redirected_to genre_description_path(assigns(:genre_description))
  end

  test "should show genre_description" do
    get :show, id: @genre_description
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @genre_description
    assert_response :success
  end

  test "should update genre_description" do
    patch :update, id: @genre_description, genre_description: { description_id: @genre_description.description_id, genre_id: @genre_description.genre_id }
    assert_redirected_to genre_description_path(assigns(:genre_description))
  end

  test "should destroy genre_description" do
    assert_difference('GenreDescription.count', -1) do
      delete :destroy, id: @genre_description
    end

    assert_redirected_to genre_descriptions_path
  end
end
