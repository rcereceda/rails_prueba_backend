class WorksController < ApplicationController
  def index
  	@works = Work.all
  end

  def destroy
  	@work = Work.find(params[:id])
  	@work.destroy
  	redirect_to works_index_path
  end
end
