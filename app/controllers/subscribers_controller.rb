class SubscribersController < ApplicationController 
  def create
    @subscriber = Subscriber.new(subscriber_params)

    if @subscriber.save
      render status: 200
    else
      render status: 500
    end
  end

  private 

  def subscriber_params
    params.require(:subscriber).permit(:email)
  end
end