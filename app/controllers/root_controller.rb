class RootController < ApplicationController
  def index
    Rails.logger.debug("-----------------")
    Rails.logger.debug("index in server")
    render "index"
  end
  def about
    render "about"
  end
  def contact
    render "contact"
    # redirect_to('/about')
  end
  def api
    @response = {
      :status => 200,
      :message => "hello world"
    }
    render json: @response
  end
  def errorTest
    # head :not_found
    return 
  end
  def user
    render json: params[:id]
  end
end 
