class SuredsController < ApplicationController


  def index
    @sureds = Sured.all
  end

  def new
    @sured = Sured.new
  end

  def create
    @sured = Sured.new(sured_params)
    if @sured.save
      redirect_to @sured
    else
      render "new"
    end
  end

  def edit
  end

  def seach
    @sureds = Sured.seach(seach_params[:sured])
  end

private



  def sured_params
    params.require(:sured).permit(:title, :editer)
  end

  def seach_params
    params.fetch(:search, {}).permit(:sured)
  end


end
