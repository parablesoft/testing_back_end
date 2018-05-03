class Api::V1::ApiController < ApplicationController
  include JSONAPI::ActsAsResourceController

  after_action :set_access_control_headers

  private
  def set_access_control_headers
    headers['Access-Control-Allow-Origin'] = "*"
    headers['Access-Control-Request-Method'] = %w{GET POST PUT PATCH HEAD DELETE OPTIONS}.join(",")
  end
end
