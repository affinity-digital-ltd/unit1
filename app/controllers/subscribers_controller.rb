class SubscribersController < ApplicationController 
  def create
    @subscriber = Subscriber.new(subscriber_params)

    if @subscriber.save
      respond_to do |format| 
        format.json { render json: @subscriber }
      end
    else
      respond_to do |format| 
        format.json { render json: @subscriber.errors }
      end
    end
  end

  private 

  def subscriber_params
    params.require(:subscriber).permit(:email)
  end
end