class RegisteredApplicationsController < ApplicationController

  def index
    @registered_applications = RegisteredApplication.all
  end

  def show
    @registered_application = RegisteredApplication.find(params[:id])
  end

  def new
     @registered_application = RegisteredApplication.new
  end

  def create
    @registered_application = RegisteredApplication.new(registered_application_params)
     if @registered_application.save
       flash[:notice] = "Your Application Registration was saved successfully."
       redirect_to registered_applications_path
     else
       flash.now[:alert] = "Error creating your registration. Please try again."
       render :new
     end
  end

  def edit
     @registered_application = RegisteredApplication.find(params[:id])
  end

  def update
      @registered_application = RegisteredApplication.find(params[:id])
      @registered_application.assign_attributes(registered_application_params)
      if @registered_application.save
        flash[:notice] = "Your Registered Application was updated successfully."
        redirect_to registered_applications_path
      else
        flash.now[:alert] = "Error updating your Application Registration. Please try again."
        render :edit
      end
  end

  def destroy
      @registered_application = RegisteredApplication.find(params[:id])
      if @registered_application.destroy
        flash[:notice] = "\"#{@registered_application.name}\" was deleted successfully."
        redirect_to action: :index
      else
        flash.now[:alert] = "There was an error deleting the Registered Application."
        render :show
      end
  end


  private

  def registered_application_params
    params.require(:registered_application).permit(:name, :url, :user_id)
  end

end
