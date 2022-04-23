json.extract! order_detail, :id, :quantity, :price_per_item, :order_id, :menu_item_id, :created_at, :updated_at
json.url order_detail_url(order_detail, format: :json)
