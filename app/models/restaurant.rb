class Restaurant < ApplicationRecord
    validates :name, presence: true, length: { minimum: 2, maximum: 20}
    validates :bio, presence: true, length: { minimum: 0, maximum: 128 }
    validates :clean_score, presence: true,  numericality: {less_than_or_equal_to: 4, greater_than_or_equal_to: 0}
    validates :price_score, presence: true, numericality: {less_than_or_equal_to: 4, greater_than_or_equal_to: 0}
    validates :ambiance_score, presence: true , numericality: {less_than_or_equal_to: 4, greater_than_or_equal_to: 0}
end
