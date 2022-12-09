class HomeController < ApplicationController
  def munkesnaps
    @users = []
  end
end

# Model <-> DB
# Controller -> Model -> View
# View <-> User
