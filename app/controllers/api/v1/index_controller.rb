class Api::V1::IndexController < Api::ApiController
  def index
    user = User.all
    if user.blank?
      render json: { error: 'Nenhum usuario encontrado' }
    else
      render json: user
    end
  end
end
