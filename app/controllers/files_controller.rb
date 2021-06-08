class FilesController < ApplicationController
    def create
        files = File.new(files_params)
        if file.save
          redirect_to :controller => "folder", :action => "index"

        else
          redirect_to :controller => "folder", :action => "new"

        end
      end
    
      private
      def folder_params
        params.require(:file).permit(:body)
      end 
end
