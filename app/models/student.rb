class Student < ApplicationRecord
  belongs_to :school_class, counter_cache: true

  validates :first_name, :last_name, :surname, :school_id, presence: true

end
