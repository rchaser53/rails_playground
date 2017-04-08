class RootController < ApplicationController
  def show
    @message = Message.all
    puts 23
    puts @message
    puts 24
  end
end
