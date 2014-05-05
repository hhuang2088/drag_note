class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.string :title
      t.references :user, index: true

      t.timestamps
    end
  end
end
