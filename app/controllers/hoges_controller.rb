class HogesController < ApplicationController
  def new
#    @hoge = Hoge.new (:name => 'test', :nyan => 23)
  end

  def index
    puts 234
    @hoges = Hoge.all
  end

  def add
    puts 'abc'
    Hoge.create(:nyan => 444)
    redirect_to :action => 'index'
  end

  def delete
    puts 'abc'
    Hoge.destroy_all("nyan = 444")
    redirect_to :action => 'index'
  end
end
