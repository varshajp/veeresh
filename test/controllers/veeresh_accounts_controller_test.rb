require 'test_helper'

class VeereshAccountsControllerTest < ActionController::TestCase
  setup do
    @veeresh_account = veeresh_accounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:veeresh_accounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create veeresh_account" do
    assert_difference('VeereshAccount.count') do
      post :create, veeresh_account: { booking_id: @veeresh_account.booking_id, cinema_id: @veeresh_account.cinema_id, no_of_tickets_box: @veeresh_account.no_of_tickets_box, no_of_tickets_online: @veeresh_account.no_of_tickets_online, total_amt_per_day: @veeresh_account.total_amt_per_day, user_id: @veeresh_account.user_id }
    end

    assert_redirected_to veeresh_account_path(assigns(:veeresh_account))
  end

  test "should show veeresh_account" do
    get :show, id: @veeresh_account
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @veeresh_account
    assert_response :success
  end

  test "should update veeresh_account" do
    patch :update, id: @veeresh_account, veeresh_account: { booking_id: @veeresh_account.booking_id, cinema_id: @veeresh_account.cinema_id, no_of_tickets_box: @veeresh_account.no_of_tickets_box, no_of_tickets_online: @veeresh_account.no_of_tickets_online, total_amt_per_day: @veeresh_account.total_amt_per_day, user_id: @veeresh_account.user_id }
    assert_redirected_to veeresh_account_path(assigns(:veeresh_account))
  end

  test "should destroy veeresh_account" do
    assert_difference('VeereshAccount.count', -1) do
      delete :destroy, id: @veeresh_account
    end

    assert_redirected_to veeresh_accounts_path
  end
end
