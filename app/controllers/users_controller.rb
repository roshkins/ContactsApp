class UsersController < ApplicationController
  class UsersController < ApplicationController
    def index
      render :json => User.all
      #render :text => "Whatever"
    end

    def create
      p params
      user = User.new(params[:post])
      if user.save
        render :json => user
      else
        render :json => user.errors, status: :unprocessable_entity
      end
    end

  end

end
