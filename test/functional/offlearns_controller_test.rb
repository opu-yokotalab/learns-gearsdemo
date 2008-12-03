require 'test_helper'

class OfflearnsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:offlearns)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_offlearn
    assert_difference('Offlearn.count') do
      post :create, :offlearn => { }
    end

    assert_redirected_to offlearn_path(assigns(:offlearn))
  end

  def test_should_show_offlearn
    get :show, :id => offlearns(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => offlearns(:one).id
    assert_response :success
  end

  def test_should_update_offlearn
    put :update, :id => offlearns(:one).id, :offlearn => { }
    assert_redirected_to offlearn_path(assigns(:offlearn))
  end

  def test_should_destroy_offlearn
    assert_difference('Offlearn.count', -1) do
      delete :destroy, :id => offlearns(:one).id
    end

    assert_redirected_to offlearns_path
  end
end
