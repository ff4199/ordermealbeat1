require 'test_helper'

class OrderformsControllerTest < ActionController::TestCase
  setup do
    @orderform = orderforms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orderforms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create orderform" do
    assert_difference('Orderform.count') do
      post :create, orderform: { hotel: @orderform.hotel, price: @orderform.price, quantity: @orderform.quantity, taste: @orderform.taste }
    end

    assert_redirected_to orderform_path(assigns(:orderform))
  end

  test "should show orderform" do
    get :show, id: @orderform
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @orderform
    assert_response :success
  end

  test "should update orderform" do
    put :update, id: @orderform, orderform: { hotel: @orderform.hotel, price: @orderform.price, quantity: @orderform.quantity, taste: @orderform.taste }
    assert_redirected_to orderform_path(assigns(:orderform))
  end

  test "should destroy orderform" do
    assert_difference('Orderform.count', -1) do
      delete :destroy, id: @orderform
    end

    assert_redirected_to orderforms_path
  end
end
