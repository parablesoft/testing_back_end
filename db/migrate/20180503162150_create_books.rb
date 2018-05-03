class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author

      t.timestamps
    end


    Book.create(title: "The Bible", author: "God")
    Book.create(title: "Wealth of Nations", author: "Adam Smith")
  end
end
