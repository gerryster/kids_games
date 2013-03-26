class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.integer :story_id, {:null => false}
      t.text :body
      t.integer :number, {:null => false}

      t.timestamps
    end

    add_index :pages, :story_id
    add_index :pages, [:story_id, :number], {:unique => true}
  end
end
