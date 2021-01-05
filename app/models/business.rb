class Business < ApplicationRecord
    has_many :investments
    has_many :users, through: :investments

    def money_made
        # byebug
       investment_money = self.investments.sum do |investment| 
            investment.amount 
       end 
       self.amount_raised = investment_money 
       return self.amount_raised
    end 

    def percent_funded
        if self.money_made > 0
            funding_percent = ((self.money_made.to_f / self.goal.to_f).to_f * 100).round(2)
        else 
            funding_percent = 0
        end 
    end 

end
