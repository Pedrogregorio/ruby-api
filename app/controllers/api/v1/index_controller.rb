class Api::V1::IndexController < Api::ApiController
  def index
    user = User.all
    rende json: { error: 'Nenhum usuario encontrado' } unless user
    render json: user
  end
end
