class IndexController < ApplicationController
    def index
        nome = { name: 'Gregorio' }
        render json: nome
    end
end