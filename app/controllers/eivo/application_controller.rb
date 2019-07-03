# frozen_string_literal: true

module EIVO
  class ApplicationController < ::ActionController::Base

    include EIVO::Concerns::Exception

    include HttpAcceptLanguage::AutoLocale

  end
end
