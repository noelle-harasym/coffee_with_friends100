json.extract! coffee_order, :id, :user_id, :coffee_type_id, :cafe,
              :dairy_type_id, :modifications_other, :iced, :picture, :date, :rating, :created_at, :updated_at
json.url coffee_order_url(coffee_order, format: :json)
