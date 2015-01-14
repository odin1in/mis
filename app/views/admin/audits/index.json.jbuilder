json.array!(@admin_audits) do |admin_audit|
  json.extract! admin_audit, :id, :auditable_id, :associated_type, :associated_id, :associated_type, :user_id, :user_type, :username, :action, :audited_changes
  json.url admin_audit_url(admin_audit, format: :json)
end
