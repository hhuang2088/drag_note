class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :query
      t.references :chapter, index: true

      t.timestamps
    end
  end
end
