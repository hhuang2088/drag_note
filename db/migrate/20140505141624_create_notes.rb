class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :title
      t.text :body
      t.references :chapter_id, index: true
      t.references :page_id, index: true

      t.timestamps
    end
  end
end
