class PusherController < ApplicationController

  def auth
     p "params: #{params}"
     response = Pusher[params[:channel_name]].authenticate(params[:socket_id])
     puts "response: #{response}"
     render :json => response
     #render :text => response.to_json #params[:callback] + "(" + response.to_json + ")"
  end
end
