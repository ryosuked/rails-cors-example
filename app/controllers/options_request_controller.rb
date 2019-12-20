class OptionsRequestController < ApplicationController
  protect_from_forgery except: :preflight

  def preflight
    head :ok
  end
end
