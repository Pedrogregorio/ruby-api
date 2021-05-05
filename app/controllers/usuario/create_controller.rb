class CreateUserController < ApplicationController
    def create
        user = User.create(name: params[:name], email: params[:email], idade: params[:idade])
    end
end