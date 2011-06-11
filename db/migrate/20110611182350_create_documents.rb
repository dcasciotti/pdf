class CreateDocuments < ActiveRecord::Migration
  def self.up
    create_table :documents do |t|
      t.string :pdf
      t.string :pdf_file_name
      t.string :pdf_content_type
      t.integer :pdf_file_size
      t.datetime :pdf_updated_at

      t.timestamps
    end
  end

  def self.down
    drop_table :documents
  end
end
