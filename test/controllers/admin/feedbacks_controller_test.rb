require 'test_helper'

class Admin::FeedbacksControllerTest < ActionController::TestCase
  setup do
    @admin_feedback = admin_feedbacks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_feedbacks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_feedback" do
    assert_difference('Admin::Feedback.count') do
      post :create, admin_feedback: { email: @admin_feedback.email, kind: @admin_feedback.kind, name: @admin_feedback.name, note: @admin_feedback.note, phone: @admin_feedback.phone }
    end

    assert_redirected_to admin_feedback_path(assigns(:admin_feedback))
  end

  test "should show admin_feedback" do
    get :show, id: @admin_feedback
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_feedback
    assert_response :success
  end

  test "should update admin_feedback" do
    patch :update, id: @admin_feedback, admin_feedback: { email: @admin_feedback.email, kind: @admin_feedback.kind, name: @admin_feedback.name, note: @admin_feedback.note, phone: @admin_feedback.phone }
    assert_redirected_to admin_feedback_path(assigns(:admin_feedback))
  end

  test "should destroy admin_feedback" do
    assert_difference('Admin::Feedback.count', -1) do
      delete :destroy, id: @admin_feedback
    end

    assert_redirected_to admin_feedbacks_path
  end
end
