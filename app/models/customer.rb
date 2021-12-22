class Customer < ApplicationRecord

    belongs_to :user
    has_many :purchases
    has_many :piples
    has_many :conracts
    

    def formated_created_at
        created_at.strftime('%Y-%m-%d %H:%M:%S')
    end
end
