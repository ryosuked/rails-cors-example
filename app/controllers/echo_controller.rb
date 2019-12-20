class EchoController < ApplicationController
  def echo
    render json: {message: "hello"}
  end
end
