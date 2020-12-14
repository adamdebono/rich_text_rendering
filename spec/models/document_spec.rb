RSpec.describe do
  it 'should create a rich text object with an attachment' do
    blob = ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join('spec/image.png')), filename: 'image.png')
    attachment = ActionText::Attachment.from_attachable(blob)

    # This works
    document = Document.create!(content: "<div>Sample content with attachment</div><div>#{attachment.to_html}</div>")

    # This does not
    document.update!(content: "<div>Sample content with attachment</div><div>#{attachment.to_html}</div>")
  end
end
