require 'test_helper'

class RecipientsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:recipients)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_recipient
    assert_difference('Recipient.count') do
      post :create, :recipient => { }
    end

    assert_redirected_to recipient_path(assigns(:recipient))
  end

  def test_should_show_recipient
    get :show, :id => recipients(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => recipients(:one).id
    assert_response :success
  end

  def test_should_update_recipient
    put :update, :id => recipients(:one).id, :recipient => { }
    assert_redirected_to recipient_path(assigns(:recipient))
  end

  def test_should_destroy_recipient
    assert_difference('Recipient.count', -1) do
      delete :destroy, :id => recipients(:one).id
    end

    assert_redirected_to recipients_path
  end
end
