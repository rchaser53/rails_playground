class HogesController < ApplicationController
  def new
#    @hoge = Hoge.new (:name => 'test', :nyan => 23)
  end

  def index
    puts 234
    @hoges = Hoge.all
  end

  def jjj
    puts 'abc'
    Hoge.create(:nyan => 444)
  end
end
