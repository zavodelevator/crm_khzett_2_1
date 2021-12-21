class Purchase < ApplicationRecord
  belongs_to :customer

  def formated_created_at
    created_at.strftime('%Y-%m-%d %H:%M:%S')
  end

  validates :name_product, presence: true, length: {minimum: 5}
end
