class PaymentsController < ApplicationController
	def index
		@payments = Payment.all
	end

	def new
		@payment = Payment.new

	end

	def create
		@payment = Payment.new(params[:payment])

		if @payment.save
			redirect_to payments_path
		else
			render :action => 'new'
		end
	end
 
  def destroy
    @payment = Payment.find(params[:id])
    @payment.destroy
    redirect_to payments_url
  end
end
