# frozen_string_literal: true

class SchoolClass < ApplicationRecord
  has_many :students, dependent: :destroy

  validates :number,
            numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 11 }, presence: true
  validates :letter, presence: true, length: { maximum: 1 }
  validates :students_count, numericality: { greater_than_or_equal_to: 0 }
end
