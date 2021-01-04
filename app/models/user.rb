class User < ApplicationRecord
    has_many :investments
    has_many :businesses, through: :investments

end
