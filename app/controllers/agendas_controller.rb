class AgendasController < Bijou::BaseController
  def new
  end

  def create
    name = params["agenda"]["name"]
    agenda = Agenda.new(name: name, done: true)
    if agenda.save
      render :new
    else
      require "pry"; binding.pry
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
