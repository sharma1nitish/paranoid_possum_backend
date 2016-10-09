require 'custom_error'

module ApiErrorHandler
  extend ActiveSupport::Concern
  included do
    rescue_from ActiveRecord::RecordNotFound do |e|
      error!({
        error: e.message
      }, 422)
    end

    rescue_from ActiveRecord::RecordInvalid do |e|
      error!({ errors: e.record.errors }, 422)
    end

    rescue_from Grape::Exceptions::ValidationErrors do |e|
      error!({
        error: e.message
      }, e.status)
    end

    rescue_from CanCan::AccessDenied do |e|
      error!({
        error: e.message
      }, 403)
    end

    rescue_from Errors::CustomError do |e|
      error!({
        error: e.message
      }, 400)
    end

  end
end
