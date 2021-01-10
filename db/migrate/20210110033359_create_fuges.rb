class CreateFuges < ActiveRecord::Migration[6.1]
  def change
    create_table :fuges do |t|
      t.string :title
      t.string :body

      t.timestamps
    end
  end
end
