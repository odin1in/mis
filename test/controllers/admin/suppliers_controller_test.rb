require 'test_helper'

class Admin::SuppliersControllerTest < ActionController::TestCase
  setup do
    @admin_supplier = admin_suppliers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_suppliers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_supplier" do
    assert_difference('Admin::Supplier.count') do
      post :create, admin_supplier: { address: @admin_supplier.address, name: @admin_supplier.name, phone: @admin_supplier.phone }
    end

    assert_redirected_to admin_supplier_path(assigns(:admin_supplier))
  end

  test "should show admin_supplier" do
    get :show, id: @admin_supplier
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_supplier
    assert_response :success
  end

  test "should update admin_supplier" do
    patch :update, id: @admin_supplier, admin_supplier: { address: @admin_supplier.address, name: @admin_supplier.name, phone: @admin_supplier.phone }
    assert_redirected_to admin_supplier_path(assigns(:admin_supplier))
  end

  test "should destroy admin_supplier" do
    assert_difference('Admin::Supplier.count', -1) do
      delete :destroy, id: @admin_supplier
    end

    assert_redirected_to admin_suppliers_path
  end
end
