# frozen_string_literal: true

module Spree
  class StripeController < SolidusStripeArchive::IntentsController
    include Core::ControllerHelpers::Order

    def confirm_payment
      Deprecation.warn "please use SolidusStripeArchive::IntentsController#confirm"

      confirm
    end
  end
end
