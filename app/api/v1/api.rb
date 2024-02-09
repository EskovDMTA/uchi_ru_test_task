# frozen_string_literal: true

module V1
  class API < Base
    mount V1::Classes
    mount V1::Students
  end
end
