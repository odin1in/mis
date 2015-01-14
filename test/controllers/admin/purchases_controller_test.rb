require 'test_helper'

class Admin::PurchasesControllerTest < ActionController::TestCase
  setup do
    @admin_purchase = admin_purchases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_purchases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_purchase" do
    assert_difference('Admin::Purchase.count') do
      post :create, admin_purchase: { cpu: @admin_purchase.cpu, deliver_at: @admin_purchase.deliver_at, product_id: @admin_purchase.product_id, qty: @admin_purchase.qty, status: @admin_purchase.status, supplier_id: @admin_purchase.supplier_id, total: @admin_purchase.total }
    end

    assert_redirected_to admin_purchase_path(assigns(:admin_purchase))
  end

  test "should show admin_purchase" do
    get :show, id: @admin_purchase
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_purchase
    assert_response :success
  end

  test "should update admin_purchase" do
    patch :update, id: @admin_purchase, admin_purchase: { cpu: @admin_purchase.cpu, deliver_at: @admin_purchase.deliver_at, product_id: @admin_purchase.product_id, qty: @admin_purchase.qty, status: @admin_purchase.status, supplier_id: @admin_purchase.supplier_id, total: @admin_purchase.total }
    assert_redirected_to admin_purchase_path(assigns(:admin_purchase))
  end

  test "should destroy admin_purchase" do
    assert_difference('Admin::Purchase.count', -1) do
      delete :destroy, id: @admin_purchase
    end

    assert_redirected_to admin_purchases_path
  end
end
