class BusinessSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :industry, :address, :phone_number, :website, :goal, :amount_raised, :picture

  has_many :investments
end
