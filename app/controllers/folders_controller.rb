class FoldersController < ApplicationController
  before_action :authenticate_user!
    def index
      @folders = Folder.all
      @sheets = Sheet.all
      @links = Link.all
      
    end 
    
    def new
      @folder = Folder.new
      @sheet = Sheet.new
      @link = Link.new

    end

    def create
       folder.user_id = current_user.id
       
       folder = Folder.new(folder_params)
        if folder.save
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
       
       second_folder = SecondFolder.new(second_folder_params)
        if second_folder.save
          redirect_to :action => "show"
        else
          redirect_to :action => "show"
        end
    end
    

    def show
        @folder = Folder.find(params[:id])
        @second_folder = SecondFolder.new
        @second_folders = SecondFolder.all
    end
      private
      def folder_params
        params.require(:folder).permit(:folder)
      end

      def second_folder_params
        params.require(:second_folder).permit(:two_title, :two_body)
      end
end
