class PagesController < ApplicationController
  def home
    @ref = params[:ref]
  end

  def about
  end

  def recent
  end

	def ambassador
  end

  def breakroom
    @referrers = Referrer.search(params[:search])
  end

  def invite
   
    @contact = Contact.new

    @referrers = Referrer.search(params[:search])

    list_id = "a44f77cc62"
    gb = Gibbon::API.new
    
    emails = [{"email" => params[:search]}]
    
    @info = gb.lists.member_info({:id => list_id, :emails =>  emails})

    @referrersRank = Referrer.all.order("points DESC")

  end

  def shop
  end

  def thankyou
  end
end
