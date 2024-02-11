# frozen_string_literal: true

class Student < ApplicationRecord
  belongs_to :school_class, counter_cache: true

  validates :first_name, :last_name, :surname, :school_id, presence: true
  validates :first_name, :last_name, :surname, length: { minimum: 2, maximum: 20 }
end
