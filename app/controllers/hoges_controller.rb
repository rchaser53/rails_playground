class HogesController < ApplicationController
  def new
    @hoge = Hoge.new 23
  end

  def jjj
    puts 'abc'
  end
end
