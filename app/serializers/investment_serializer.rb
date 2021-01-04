class InvestmentSerializer < ActiveModel::Serializer
  attributes :id, :description, :date, :amount, :user_id, :business_id
  
end
 