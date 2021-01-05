class InvestmentSerializer < ActiveModel::Serializer
  attributes :id, :description, :amount, :user_id, :business_id
  
end
 