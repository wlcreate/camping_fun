class SignupsController < ApplicationController

    def new
        @signup = Signup.new
        @campers = Camper.all
        @activities = Activity.all
    end

    def create
        signup_params = params.require(:signup).permit(:camper_id, :activity_id, :time)
        @signup = Signup.create(signup_params)
        redirect_to @signup.camper
    end

end
