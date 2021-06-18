class SecondFoldersController < ApplicationController
  def create
    second_folder = SecondFolder.new(second_folder_params)
    second_folder.folder_id = params[:folder_id]
    second_folder.user_id = current_user.id
     if second_folder.save
       redirect_to folder_path(params[:folder_id])
     else
       redirect_to new_folder_second_folder
     end
   end

   def new
    @second_folder = SecondFolder.new
   end

   def show
  
   end  

   private

      def second_folder_params
        params.require(:second_folder).permit(:two_title, :two_body)
      end
    
end