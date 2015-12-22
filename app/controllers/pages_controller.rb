class PagesController < Bijou::BaseController
  def index
    @agendas = Agenda.all
  end
end
