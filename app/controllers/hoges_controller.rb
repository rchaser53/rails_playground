class HogesController < ApplicationController
  def new
    @hoge = Hoge.new
  end
end
