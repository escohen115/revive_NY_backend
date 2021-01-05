class BusinessSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :industry, :address, :phone_number, :website, :goal, :picture, :money_made, :percent_funded

  has_many :investments
end
