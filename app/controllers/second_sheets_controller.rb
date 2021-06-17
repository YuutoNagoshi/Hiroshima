class SecondSheetsController < ApplicationController
    def create
        second_sheet = SecondSeet.new(second_sheet_params)
        second_sheet.sheet_id = params[:sheet_id]
        second_sheet.user_id = current_user.id
         if second_sheet.save
           redirect_to sheet_path(params[:sheet_id])
         else
           redirect_to new_sheet_second_sheet
         end
    end
    
    def new
      @second_sheet = SecondSheet.new
    end
    
       private
    
    def second_sheet_params
       params.require(:second_sheet).permit(:two_title, :two_body)
    end
end
