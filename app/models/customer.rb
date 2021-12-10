class Customer < ApplicationRecord

    belongs_to :user
    has_many :purchases

    def formated_created_at
        created_at.strftime('%Y-%m-%d %H:%M:%S')
    end
end
