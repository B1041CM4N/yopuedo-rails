class HomeController < ApplicationController
  def index
    @greetings = "Hola programador, la busqueda es: #{params[:query]}" if params[:query].present?
    @greetings = 'Hola programador!' if !params[:query].present?
  end

  def why
  end

  def timer
    respond_to do |format|
      format.json{
        @data = DateTime.now.strftime('%d/%m/%Y, %H:%M:%S')
      }
    end
    @data
  end

  def history
  end

  def contact
  end

  def coffee_invitation
  end

  def testing
  end

  def my_status
  end
end
