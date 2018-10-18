class ApiController < ApplicationController
  skip_before_action :authenticate_user!
  def about
  	render json:{
  		time: Time.now.to_formatted_s(:time),
  		date: Date.today,
  		name: "Kerttu",
  		fruits: ['datlid', 'apelsinid', 'maasikad']
  	}
  end
end