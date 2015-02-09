module TestHelpers
  def video_file
    @file ||= File.open(File.expand_path("#{Rails.root}/spec/fixtures/lorem_ipsum.mov", __FILE__))
  end

  def uploaded_file_object(klass, attribute, file, content_type = 'text/plain')
    filename = File.basename(file.path)
    klass_label = klass.to_s.underscore

    ActionDispatch::Http::UploadedFile.new(
      tempfile: file,
      filename: filename,
      head: %{ Content-Disposition: form-data; name="#{klass_label}[#{attribute}]"; filename="#{filename}" },
      content_type: content_type
    )
  end
end
