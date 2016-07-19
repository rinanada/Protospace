class CreateCaptureImages < ActiveRecord::Migration
  def change
    create_table :capture_images do |t|

      t.integer :type
      t.integer :prototype_id
      t.text  :content
      t.timestamps
    end
  end
end
