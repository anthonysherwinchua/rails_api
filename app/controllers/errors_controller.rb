class ErrorsController < ApplicationController
  # NOTE: change consider_all_requests_local to `false` on config/environments/development.rb to show these error messages

  def not_found
    render_error('not found')
  end

  def server_error
    render_error('server error')
  end

  private

  def render_error(message)
    render json: { error: message }, status: request.path.gsub('/', '')
  end
end
