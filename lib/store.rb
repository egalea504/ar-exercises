class Store < ActiveRecord::Base
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validate :apparel, on: :create

  def apparel
    if mens_apparel == true || womens_apparel == true
    else
      errors.add(:base, "Store must carry at least men's or women's apparel")
    end
  end
end
