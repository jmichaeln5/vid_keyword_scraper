class CreateSites < ActiveRecord::Migration[5.2]
  def change
    create_table :sites do |t|
      t.string :link
      t.string :title
      t.string :thumbnail_link
      t.text :keyword_list

      t.timestamps
    end
  end
end
