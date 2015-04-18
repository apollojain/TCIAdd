class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.string :subtitle
      t.string :code

      t.timestamps
    end
  end
end
