class HogesController < ApplicationController
  def new
  end

  def show
    @hoge = Hoge.find_by(id: params[:id]) || Hoge.create(nyan: 123)
  end

  def index
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
