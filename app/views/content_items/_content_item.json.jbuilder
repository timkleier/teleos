json.extract! content_item, :id, :title, :description, :authors, :created_at, :updated_at
json.url content_item_url(content_item, format: :json)
