class CreateCaptureImages < ActiveRecord::Migration
  def change
    create_table :capture_images do |t|

      t.integer :type, default: 0, null: false, limit: 1
      t.references :prototype
      t.text  :content
      t.timestamps
    end
  end
end
