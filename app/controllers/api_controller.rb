class ApiController < ApplicationController
  skip_before_action :authenticate_user!
  skip_before_action :verify_authenticity_token

  def about
  	render json:{
  		time: Time.now.to_formatted_s(:time),
  		date: Date.today,
  		name: "Kerttu",
  		fruits: ['datlid', 'apelsinid', 'maasikad']
  	}
  end

  def haiku
  	render json: {haiku: reverse(params[:haiku])}
  end

  def reverse(haiku)
  	haiku.split(' ').reverse.join(' ')
  end
end