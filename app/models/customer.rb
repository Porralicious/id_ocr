
class Customer < ApplicationRecord
  validate :identification_number_valid?
  has_one_attached :identification_document_image


  def identification_number_valid?
    path            = ActiveStorage::Blob.service.path_for(self.identification_document_image.key)
    id_doc          = RTesseract.new(path, config_file: :digits)
    pattern_matches = id_doc.to_s.scan(/\d{13}/)
    if pattern_matches.empty?
      errors.add(:identification_document_image, "not clear enough to distinguish a identification number")
    else
      if pattern_matches.first != self.identification_number
        errors.add(:identification_document_image, " id number doesnt match input id")
      end
    end
  end
end
