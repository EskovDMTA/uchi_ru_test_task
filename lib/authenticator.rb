module Authenticator
  SECRET_KEY = Rails.application.secrets.secret_key_base

  def self.issue_token(payload)
    JWT.encode(payload, SECRET_KEY)
  end

  def self.decode_token(token)
    decoded = JWT.decode(token, SECRET_KEY).first
    HashWithIndifferentAccess.new(decoded)
  rescue JWT::DecodeError
    nil
  end
end
