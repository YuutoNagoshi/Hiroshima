class SheetsController < ApplicationController
    def show
      @sheet = Sheet.find(params[:id])
      @second_sheet = SecondSheet.new
      @second_sheets = SecondSheet.where(sheet_id: @sheet.id, user_id: @sheet.user_id)
    end
    
    def create
       sheet = Sheet.new(sheet_params)
       sheet.user_id = current_user.id
       if sheet.save!
         redirect_to folders_path
       else
         redirect_to :action => "new"
       end 
    end

    def destroy
      sheet = Sheet.find(params[:id])
      sheet.destroy
      redirect_to folders_path
    end 

    private
    def sheet_params
        params.require(:sheet).permit(:title, :body, :image)
    end
end
