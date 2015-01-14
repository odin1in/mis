require 'test_helper'

class Admin::WarehousesControllerTest < ActionController::TestCase
  setup do
    @admin_warehouse = admin_warehouses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_warehouses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_warehouse" do
    assert_difference('Admin::Warehouse.count') do
      post :create, admin_warehouse: { address: @admin_warehouse.address, name: @admin_warehouse.name }
    end

    assert_redirected_to admin_warehouse_path(assigns(:admin_warehouse))
  end

  test "should show admin_warehouse" do
    get :show, id: @admin_warehouse
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_warehouse
    assert_response :success
  end

  test "should update admin_warehouse" do
    patch :update, id: @admin_warehouse, admin_warehouse: { address: @admin_warehouse.address, name: @admin_warehouse.name }
    assert_redirected_to admin_warehouse_path(assigns(:admin_warehouse))
  end

  test "should destroy admin_warehouse" do
    assert_difference('Admin::Warehouse.count', -1) do
      delete :destroy, id: @admin_warehouse
    end

    assert_redirected_to admin_warehouses_path
  end
end
