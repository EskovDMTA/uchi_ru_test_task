# frozen_string_literal: true

module ErrorHandler
  def self.included(callback_class)
    callback_class.instance_eval do
      rescue_from ActiveRecord::RecordNotFound do |e|
        error_response(message: e.message, status: 404)
      end

      rescue_from ActiveRecord::RecordInvalid do |e|
        error_response(message: e.record.errors.full_messages, status: 422)
      end

      rescue_from Grape::Exceptions::ValidationErrors do |e|
        error_response(message: e.full_messages, status: 400)
      end

      rescue_from :all do |e|
        error_response(message: "Internal server error: #{e}", status: 500)
      end
    end
  end

  private

  def error_response(message:, status:)
    error!({ error: "#{message}chert" }, status)
  end
end
