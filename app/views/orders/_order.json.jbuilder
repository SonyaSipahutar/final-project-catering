json.extract! order, :id, :total_price, :status, :customer_id, :created_at, :updated_at
json.url order_url(order, format: :json)
