class ProjectsController < ApplicationController
  http_basic_authenticate_with name:"desafiovamoscontodo", password:"XAHTJEAS23123%23", only: :index
  def index
    return @projects = Project.all unless params.has_key?(:s) && params[:s].present? 

    @projects = Project.search(params[:s]) 
    # if params[:s] == ''
    #   @projects = Project.all
    # elsif params[:s] == 'proposal'
    #   @projects = Project.search_proposal 
    # elsif params[:s] == 'in_progress'
    #   @projects = Project.search_in_progress 
    # elsif params[:s] == 'finished'
    #   @projects = Project.search_finished 
    # end
  end

  def create
  end

  def new
  end
end
