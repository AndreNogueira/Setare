class PaymentCard
  include ActiveAttr::Model

  attribute :card_type
  attribute :card_number
  attribute :cvv
  attribute :date
  attribute :first_name
  attribute :last_name

  validates :card_type, presence: true
  validates :card_number, presence: true
  validates :cvv, presence: true
  validates :date, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true


  def payment_validation(user)
    if self.valid?
      if valid_credit_card?
        service = yield
        SenderMail.new.async.perform(service, user) unless service.nil?
        { service: true, message: "Your #{extract_name(service)} reservation was successful created. Check your e-mail for more details." }
      else
        { service: false, message: 'Your credit card is invalid. Please check your credentials.' }
      end
    end
  end

  private
  def extract_name(service)
    service.class.to_s.gsub('Service','')
  end
  def valid_credit_card?
    create_credit_card.valid?
  end

  def create_credit_card
    ActiveMerchant::Billing::CreditCard.new(
        brand:              card_type,
        number:             card_number,
        verification_value: cvv,
        month:              date[:month],
        year:               date[:year],
        first_name:         first_name,
        last_name:          last_name
    )
  end

end