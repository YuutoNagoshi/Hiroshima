class LinksController < ApplicationController
    def create
        link = Link.new(link_params)
        if link.save
            redirect_to folders_path
        else
          redirect_to :action => "new"
        end
    end
    
    private
    def link_params
      params.require(:link).permit(:link)
    end
end
