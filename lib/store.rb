class Store < ActiveRecord::Base

  has_many :employees

  validates_length_of :name, minimum: 3
  validates_numericality_of :annual_revenue, minimum: 0



 validate :have_one

  def have_one
    if !(mens_apparel || womens_apparel)
      errors.add(:base, "Gotta have one of them!")
    end
  end

end
