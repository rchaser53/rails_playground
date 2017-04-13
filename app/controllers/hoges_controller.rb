class HogesController < ApplicationController
  def new
    @hoge = Hoge.new
  end

  def create
    Hoge.create(hoge_params)
    redirect_to @hoge
  end

  def show
    unless @hoge = Hoge.find_by(id: params[:id])
      redirect_to :action => 'index'
    end
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
      flash[:success] = "Profile updated"
      redirect_to @hoge
    else
      render 'edit'
    end
  end

  def destroy
    Hoge.destroy(params[:id])
    redirect_to :action => 'index'
  end

  private
    def hoge_params
      params.require(:hoge).permit(:name, :nyan)
    end
end
