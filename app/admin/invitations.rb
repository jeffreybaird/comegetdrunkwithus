ActiveAdmin.register Invitation do

form :partial => "uploader"

controller do

  def upload
    uploaded_io = params[:invitation_csv]
    file = Rails.root.join('tmp', 'uploads', uploaded_io.original_filename)
    File.open(file, 'wb') do |file|
      file.write(uploaded_io.read)
    end

    Uploader.create_invites(file)
  end

  def show
  end
end

end
