class HogesController < ApplicationController
  def new
    @hoge = Hoge.new
    puts 'gao-n'
  end

  def nyanchu
    288888
  end

  def jjj
    puts 'abc'
  end
end
