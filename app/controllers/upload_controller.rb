class UploadController < ApplicationController
  def index
    render :file=>"app/views/upload/uploadFile.html.erb"
  end

  def uploadFile
    post=Datafile.save(params[:upload])
    render :text=>"upload success"
  end
end
