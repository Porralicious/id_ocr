class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :identification_number
      t.string :identification_document_image


      t.timestamps
    end
  end
end
