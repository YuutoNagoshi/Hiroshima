class FoldersController < ApplicationController
  before_action :authenticate_user!
    def index
      @folders = Folder.where(user_id: current_user.id)
      @sheets = Sheet.where(user_id: current_user.id)
      @links = Link.all 

    end 
    
    def new
      @folder = Folder.new
      @sheet = Sheet.new
      @link = Link.new
    end

    def create
       folder = Folder.new(folder_params)
       
       folder.user_id = current_user.id
       
        if folder.save
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end  
    end
    

    def show
        @folder = Folder.find(params[:id])
        @second_folder = SecondFolder.new
        @second_folders = SecondFolder.where(folder_id: @folder.id, user_id: @folder.user_id)
        @second_sheet = SecondSheet.new
        @second_sheets = SecondSheet.where(folder_id: @folder.id, user_id: @folder.user_id)
    end


    def destroy
      folder = Folder.find(params[:id])
      folder.destroy
      redirect_to action: :index
    end
     
     private
    def folder_params
        params.require(:folder).permit(:folder)
    end
end
