class SecondFoldersController < ApplicationController
  def create
    second_folder = SecondFolder.new(second_folder_params)
     if second_folder.save
       redirect_to :action => "show"
     else
       redirect_to :action => "show"
     end
   end
end