class CreateDrawings < ActiveRecord::Migration[5.1]
  def change
    create_table :drawings do |t|
      t.string :title
      t.string :description
      t.string :tag
      t.string :link

      t.timestamps
    end
  end
end
