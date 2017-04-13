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
    Hoge.create(:nyan => 444)
    redirect_to :action => 'index'
  end

  def edit
    @hoge = Hoge.find_by(id: params[:id])
  end

  def update
    @hoge = Hoge.find(params[:id])
    if @hoge.update_attributes(hoge_params)
      #flash[:success] = "Profile updated"
      redirect_to @hoge
    else
      render 'edit'
    end
  end

  def delete
    Hoge.destroy_all("nyan = 444")
    redirect_to :action => 'index'
  end

  private
    def hoge_params
      params.require(:hoge).permit(:name, :nyan)
    end
end
