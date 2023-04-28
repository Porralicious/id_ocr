class RemoveIdentificationDocumentImageFromCustomer < ActiveRecord::Migration[7.0]
  def change
    remove_column :customers, :identification_document_image, :string
  end
end
