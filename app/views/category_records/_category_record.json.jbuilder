json.extract! category_record, :id, :category_id, :record_id, :created_at, :updated_at
json.url category_record_url(category_record, format: :json)
