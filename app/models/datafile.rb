class Datafile < ActiveRecord::Base
    attr_accessor :upload
  def self.save(upload)
    name = upload['datafile'].original_filename  
    current_user=Product.first.name 
    cmd="cd #{Rails.root}/public ; mkdir -p ./image/#{current_user}"
    system(cmd) 
    directory = 'public/image'
    
    # create the file path
    path = File.join(directory,current_user,name)
    # write the file
    File.open(path, "wb") { |f| f.write(upload['datafile'].read)}
  end
end
