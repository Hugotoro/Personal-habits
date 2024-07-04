json.extract! task, :id, :name, :description, :check, :tracker_check, :end_date, :dashboard_id, :created_at, :updated_at
json.url task_url(task, format: :json)
