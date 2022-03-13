class CoffeeOrderResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :user_id, :integer
  attribute :coffee_type_id, :integer
  attribute :cafe, :string
  attribute :dairy_type_id, :integer
  attribute :modifications_other, :string
  attribute :iced, :boolean
  attribute :picture, :string
  attribute :date, :date
  attribute :rating, :integer

  # Direct associations

  belongs_to :dairy_type

  belongs_to :coffee_type

  belongs_to :user

  # Indirect associations

end
