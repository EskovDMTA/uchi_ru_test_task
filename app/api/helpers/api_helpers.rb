module APIHelpers
  extend Grape::API::Helpers

  def authorized
    token = headers['authorization'].split(' ')&.last
    @current_user = Authenticator.decode_token(token)
    @current_user.present?
  end
end
