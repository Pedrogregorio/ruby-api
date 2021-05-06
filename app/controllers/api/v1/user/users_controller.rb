# class de cadastro de usuario
class Api::V1::User::UsersController < Api::ApiController
  def create
    user = User.create(name: params[:name], email: params[:email], idade: params[:idade])
    if !user.save
      render json: { error: "Usuario nao cadastrado #{user.errors.full_messages}" }
    else
      render json: user
    end
  end

  def show
    user = User.where(id: params[:id])
    if user.blank?
      render json: { error: 'Usuario nao existe' }
    else
      render json: user
    end
  end

  def destroy
    user = User.where(id: params[:id])
    if user.blank?
      render json: { error: 'Usuario nao existe' }
    else
      User.destroy(params[:id])
      render json: { status: "Usuario #{user[0].name} deletado" }
    end
  end
end
