class SheetsController < ApplicationController
    def create
        sheet = Sheet.new(sheet_params)
        if sheet.save
            redirect_to folders_path
        else
          redirect_to :action => "new"
        end
    end

    private
    def sheet_params
      params.require(:sheet).permit(:title, :body)
    end
end
