# class de cadastro de usuario
class Api::V1::User::UsersController < Api::ApiController
  def create
    user = User.create(name: params[:name], email: params[:email], idade: params[:idade])
    render json: { error: 'Usuario nao cadastrado' } unless user.save
    render json: user
  end
end
