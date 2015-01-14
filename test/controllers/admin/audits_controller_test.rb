require 'test_helper'

class Admin::AuditsControllerTest < ActionController::TestCase
  setup do
    @admin_audit = admin_audits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_audits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_audit" do
    assert_difference('Admin::Audit.count') do
      post :create, admin_audit: { action: @admin_audit.action, associated_id: @admin_audit.associated_id, associated_type: @admin_audit.associated_type, associated_type: @admin_audit.associated_type, auditable_id: @admin_audit.auditable_id, audited_changes: @admin_audit.audited_changes, user_id: @admin_audit.user_id, user_type: @admin_audit.user_type, username: @admin_audit.username }
    end

    assert_redirected_to admin_audit_path(assigns(:admin_audit))
  end

  test "should show admin_audit" do
    get :show, id: @admin_audit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_audit
    assert_response :success
  end

  test "should update admin_audit" do
    patch :update, id: @admin_audit, admin_audit: { action: @admin_audit.action, associated_id: @admin_audit.associated_id, associated_type: @admin_audit.associated_type, associated_type: @admin_audit.associated_type, auditable_id: @admin_audit.auditable_id, audited_changes: @admin_audit.audited_changes, user_id: @admin_audit.user_id, user_type: @admin_audit.user_type, username: @admin_audit.username }
    assert_redirected_to admin_audit_path(assigns(:admin_audit))
  end

  test "should destroy admin_audit" do
    assert_difference('Admin::Audit.count', -1) do
      delete :destroy, id: @admin_audit
    end

    assert_redirected_to admin_audits_path
  end
end
