class CarPayment
  include ActiveAttr::Model

  attribute :payment_params

  validates :payment_params, presence: true


  def payment_status
    if self.valid?
      if valid_credit_card?
        {service: true, message: 'Your Card has been successfully validated!' }
      else
        { service: false, message: 'Your credit card is invalid. Please check your credentials.' }
      end
    end
  end

  private
  def valid_credit_card?
    create_credit_card.valid?
  end

  def create_credit_card
    ActiveMerchant::Billing::CreditCard.new(
        brand:              payment_params[:card_type],
        number:             payment_params[:card_number],
        verification_value: payment_params[:cvv],
        month:              payment_params[:date][:month],
        year:               payment_params[:date][:year],
        first_name:         payment_params[:first_name],
        last_name:          payment_params[:last_name]
    )
  end

end