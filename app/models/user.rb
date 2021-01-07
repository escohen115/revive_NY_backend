class User < ApplicationRecord
    has_many :investments
    has_many :businesses, through: :investments

    validates_uniqueness_of :email 

end
