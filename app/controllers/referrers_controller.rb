class ReferrersController < ApplicationController
  before_action :set_referrer, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: []

  def index
    @referrers = Referrer.all.order(:email)
  end

  def show
  end

  def new
    @referrer = Referrer.new
  end

  def edit
  end

  def create
    @referrer = Referrer.new(referrer_params)

    respond_to do |format|
      if @referrer.save
        format.html { redirect_to @referrer, notice: 'Referrer was successfully created.' }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def update
    respond_to do |format|
      if @referrer.update(referrer_params)
        format.html { redirect_to @referrer, notice: 'Referrer was successfully updated.' }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  def destroy
    @referrer.destroy
    respond_to do |format|
      format.html { redirect_to referrers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_referrer
      @referrer = Referrer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def referrer_params
      params.require(:referrer).permit(:email, :referrals, :points, :breakroom)
    end
end
