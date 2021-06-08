class FoldersController < ApplicationController
  before_action :authenticate_user!
    def index
      @folders = Folder.all
    end 
    
    def new
      @folder = Folder.new
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
    end
      private
      def folder_params
        params.require(:folder).permit(:folder)
      end
end
