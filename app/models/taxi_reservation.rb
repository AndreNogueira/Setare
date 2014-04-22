class TaxiReservation
  include ActiveAttr::Model

  attribute :user
  attribute :taxi
  attribute :taxi_form
  attribute :extra_params

  validates :user, presence: true
  validates :taxi, presence: true
  validates :taxi_form, presence: true
  validates :extra_params, presence: true

  def reservation
    if self.valid?
      if valid_credit_card?
        taxi_service = nil
        ActiveRecord::Base.transaction do
          user_update_attributes
          taxi_service = create_taxi_service
        end
        SenderMail.new.async.perform(taxi_service, user) unless taxi_service.nil?
        { service: true, message: 'Your taxi reservation was successful created. Check your e-mail for more details.' }
      else
        { service: false, message: 'Your credit card is invalid. Please check your credentials.' }
      end
    end
  end


  private
  def valid_credit_card?
    create_credit_card.valid?
  end

  def create_taxi_service
    taxi_service                   = TaxiService.new
    taxi_service.country           = taxi_form.country_name
    taxi_service.city              = taxi_form.city_name
    taxi_service.pick_up_location  = taxi_form.pick_up_location_name
    taxi_service.drop_off_location = taxi_form.drop_off_location_name
    taxi_service.taxi              = get_taxi
    taxi_service.final_price       = final_price
    taxi_service.luggage           = luggage
    taxi_service.round_trip        = taxi_form.type_trip
    taxi_service.service_begin     = service_begin
    taxi_service.service_end       = (taxi_service.round_trip) ? nil : service_end
    taxi_service.special_request   = special_request
    taxi_service.user              = user
    (taxi_service.save) ? taxi_service : nil
  end

  def final_price
    taxi[:cost].to_f
  end

  def luggage
    extra_params[:luggage] == 'true'
  end

  def get_taxi
    Taxi.find(taxi[:taxi])
  end

  def special_request
    extra_params[:special_request]
  end

  def service_begin
    taxi_form.begin_datetime
  end

  def service_end
    taxi_form.end_datetime
  end

  def user_update_attributes
    user.update_attributes(user_params)
  end

  def create_credit_card
    ActiveMerchant::Billing::CreditCard.new(
        brand:              extra_params[:card_type],
        number:             extra_params[:card_number],
        verification_value: extra_params[:cvv],
        month:              extra_params[:date][:month],
        year:               extra_params[:date][:year],
        first_name:         extra_params[:first_name],
        last_name:          extra_params[:last_name]
    )
  end

  def user_params
    extra_params.permit(:name, :email, :bi, :nif, :phone_number, :driver_license, :address)
    .slice(:name, :email, :bi, :nif, :phone_number, :driver_license, :address)
  end
end