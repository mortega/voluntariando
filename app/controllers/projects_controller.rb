class ProjectsController < ApplicationController
	def new
		@project= Project.new
	end
	def create 
		Project.create params.require(:project).permit(:name, :description, :organizer, :place, :initial_date, :final_date, :activities, :organizer_contact)
		flash[:notice] = "Informações salvas com sucesso"
		redirect_to projects_path
	end
	def index
		@projects= Project.all 
	end
end
