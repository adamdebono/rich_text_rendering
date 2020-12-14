module AttachmentHelper
  def custom_image_helper blob
    image_tag(blob.representation(resize_to_limit: [800, 600]))
  end
end
