class ChargesController < ApplicationController
	def new
	end

	def create
	  # Amount in cents
	  @amount = 3200

	  customer = Stripe::Customer.create(
	    :email => params[:stripeEmail],
	    :card  => params[:stripeToken]
	  )

	  charge = Stripe::Charge.create(
	    :customer    => customer.id,
	    :amount      => @amount,
	    :description => params[:stripeShippingName] + " " + params[:stripeShippingAddressLine1] + " " + params[:stripeShippingAddressZip] + " " + params[:stripeShippingAddressCity] + " " + params[:stripeShippingAddressState] + " " + params[:stripeShippingAddressCountry],
	    :currency    => 'usd'
	  )

	rescue Stripe::CardError => e
	  flash[:error] = e.message
	  redirect_to charges_path
	end
end
