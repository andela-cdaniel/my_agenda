class AgendasController < Bijou::BaseController
  def new
  end

  def create
    name = params["agenda"]["name"]
    agenda = Agenda.new(name: name)
    if agenda.save
      redirect_to "/"
    else
      render :new
    end
  end

  def edit
    @agenda = Agenda.find(params[:id])
  end

  def update
    name = params["agenda"]["name"]
    done = params["agenda"]["done"] ? params["agenda"]["done"] : "false"
    requested_record = Agenda.find(params[:id])

    if requested_record.update(name: name, done: done)
      redirect_to "/"
    else
      render :edit
    end
  end

  def destroy
    requested_record = Agenda.find(params["agenda"]["id"])

    if requested_record.delete
      redirect_to "/"
    end
  end
end
