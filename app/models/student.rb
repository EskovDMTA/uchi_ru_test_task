class Student < ApplicationRecord
  # before_create :generate_auth_token
  belongs_to :school_class, counter_cache: true

  validates :first_name, :last_name, :surname, :school_id, presence: true

  # def generate_auth_token
  #   self.auth_token = Digest::SHA256.hexdigest("#{self.id}#{Rails.application.secrets.secret_key_base}")
  # end
end
