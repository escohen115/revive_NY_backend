class Investment < ApplicationRecord
  belongs_to :user
  belongs_to :business

  def self.total_investments
    Investment.sum(:amount)
  end
  
end
