class OperateursController < ApplicationController
  def index
    @operateur = Operateur.all
  end

  def new
    @operateur = Operateur.new
  end

  def create
    @operateur = Operateur.new(user_params)

    respond_to do |format|
      if @operateur.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @operateur }
      else
        format.html { render :new }
        format.json { render json: @operateur.errors, status: :unprocessable_entity }
      end
    end
  end

  def user_params
    params.require(:operateurs).permit(:nom, :email)
  end

end
