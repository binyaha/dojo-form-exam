class CreateVisibles < ActiveRecord::Migration[5.1]
  def change
    create_table :visibles do |t|
      t.string :name

      t.timestamps
    end
  end
end
