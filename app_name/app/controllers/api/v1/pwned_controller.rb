# frozen_string_literal: true

class Api::V1::PwnedController < ApiController
  def index
    target = Pwned::Password.new(params[:target])
    result = target.pwned?
    render json: { status: 200, result: result }, status: 200, content_type: 'application/json'
  end
end
