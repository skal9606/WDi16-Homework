class ChargesController < ApplicationController
  def new
    @user = @current_user
    @booking_summary = @user.bookings.last
  end

  def create

    # STRIPE
    # Amount in cents
    @amount = 500

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Rails Stripe customer',
      :currency    => 'aud'
    )

    if charge.present?
      @user = @current_user
      UserMailer.welcome(@user).deliver_now
    end

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end



  #MAILER


end
