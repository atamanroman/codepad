class CreateSnippets < ActiveRecord::Migration
  def change
    create_table :snippets do |t|
      t.text :code
      t.string :author
      t.date :created

      t.timestamps
    end
  end
end
