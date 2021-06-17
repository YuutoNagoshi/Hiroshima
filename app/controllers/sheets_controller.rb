class SheetsController < ApplicationController
    def show
      @sheet = Sheet.find(params[:id])
      @second_sheet = SecondSheet.new
      @second_sheets = SecondSheet.where(sheet_id: @sheet.id, user_id: @sheet.user_id)
    end
    
    def create
    　sheet = Sheet.new(sheet_params)
      
      
       if sheet.save
         redirect_to :action => "index"
       else
         redirect_to :action => "new"
       end 
    end

   
    private
    def sheet_params
      params.require(:sheet).permit(:title, :body)
    end
end
