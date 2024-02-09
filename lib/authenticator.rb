# frozen_string_literal: true

module Authenticator
  SECRET_KEY = Rails.application.credentials.secret_key_base

  def self.issue_token(payload)
    JWT.encode(payload, SECRET_KEY)
  end

  def self.decode_token(token)
    decoded = JWT.decode(token, SECRET_KEY).first
    ActiveSupport::HashWithIndifferentAccess.new(decoded)
  rescue JWT::DecodeError
    nil
  end
end
