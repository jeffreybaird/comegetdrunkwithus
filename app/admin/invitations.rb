ActiveAdmin.register Invitation do

form :partial => "uploader"

controller do

  def upload
    uploaded_io = params[:admin_user][:invitation_csv]
    File.open(Rails.root.join('tmp', 'uploads', uploaded_io.original_filename), 'w') do |file|
      file.write(uploaded_io.read)
    end
  end

  def show
  end
end

end
