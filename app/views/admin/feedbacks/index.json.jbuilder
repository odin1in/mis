json.array!(@admin_feedbacks) do |admin_feedback|
  json.extract! admin_feedback, :id, :email, :name, :phone, :note, :kind
  json.url admin_feedback_url(admin_feedback, format: :json)
end
