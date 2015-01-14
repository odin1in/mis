json.array!(@feedbacks) do |feedback|
  json.extract! feedback, :id, :email, :name, :phone, :note, :kind
  json.url feedback_url(feedback, format: :json)
end
