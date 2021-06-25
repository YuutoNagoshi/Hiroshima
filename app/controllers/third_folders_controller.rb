class ThirdFoldersController < ApplicationController
    def show
        @third_folder = ThirdFolder.find(params[:id])
    end  
    
    def new
      @third_sheet = ThirdSheet.new
    end
    
    def create
      third_sheet = ThirdSheet.new(third_sheet_params)
      third_sheet.folder_id = params[:folder_id]
      third_sheet.second_folder_id = params[:second_folder_id]
      third_sheet.user_id = current_user.id
      if third_sheet.save!
         redirect_to  folder_second_folder_path(params[:folder_id], params[:second_folder_id])
      else
         redirect_to new_folder_second_folder_third_folder
      end
    end  

    private
    
      def third_sheet_params
        params.require(:third_sheet).permit(:three_title, :three_body, :three_image)
      end
        
    
end
