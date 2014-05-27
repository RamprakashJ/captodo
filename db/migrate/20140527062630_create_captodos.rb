class CreateCaptodos < ActiveRecord::Migration
  def change
    create_table :captodos do |t|
      t.string :name
      t.boolean :finished

      t.timestamps
    end
  end
end
