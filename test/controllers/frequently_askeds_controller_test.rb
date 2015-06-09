require 'test_helper'

class FrequentlyAskedsControllerTest < ActionController::TestCase
  setup do
    @frequently_asked = frequently_askeds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:frequently_askeds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create frequently_asked" do
    assert_difference('FrequentlyAsked.count') do
      post :create, frequently_asked: {  }
    end

    assert_redirected_to frequently_asked_path(assigns(:frequently_asked))
  end

  test "should show frequently_asked" do
    get :show, id: @frequently_asked
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @frequently_asked
    assert_response :success
  end

  test "should update frequently_asked" do
    patch :update, id: @frequently_asked, frequently_asked: {  }
    assert_redirected_to frequently_asked_path(assigns(:frequently_asked))
  end

  test "should destroy frequently_asked" do
    assert_difference('FrequentlyAsked.count', -1) do
      delete :destroy, id: @frequently_asked
    end

    assert_redirected_to frequently_askeds_path
  end
end
