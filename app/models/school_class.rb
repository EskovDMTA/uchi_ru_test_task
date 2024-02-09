# frozen_string_literal: true

class SchoolClass < ApplicationRecord
  has_many :students, dependent: :destroy

  validates :number, :letter, presence: true
end
