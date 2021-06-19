class ThirdFoldersController < ApplicationController
    def show
        @third_folder = ThirdFolder.find(params[:id])
       end  
    
       private
    
          def third_folder_params
            params.require(:third_folder).permit(:three_title, :three_body)
          end
        
    end
end
