class HomeController < ApplicationController

  def index
    @users = User.all
  end

  def auth_get
    render :json => {:name => "auth_home"}
  end

  def auth
     p "params: #{params}"
     response = Pusher[params[:channel_name]].authenticate(params[:socket_id])
     puts "response: #{response}"
     #render :json => response
     render :text => "#{params[:callback]} (#{response.to_json})"
  end
end
