class SecondSheetsController < ApplicationController
  def create
    second_sheet = SecondSheet.new(second_sheet_params)
    second_sheet.folder_id = params[:folder_id]
    second_sheet.user_id = current_user.id
    if second_sheet.save!
       redirect_to folder_path(params[:folder_id])
    else
       redirect_to new_folder_second_folder
    end
  end
    
    def new
      @second_sheet = SecondSheet.new
    end
    
  private
    
    def second_sheet_params
       params.require(:second_sheet).permit(:two_title, :two_body, :two_image)
    end
end
