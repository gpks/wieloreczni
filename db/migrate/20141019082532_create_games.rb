class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.text :description
      t.string :type
      t.integer :game_id
      t.integer :minplayer
      t.integer :maxplayer
      t.integer :minage

      t.timestamps
    end

    create_table :games_users, id: false do |t|
      t.belongs_to :game
      t.belongs_to :user
    end
  end
end
