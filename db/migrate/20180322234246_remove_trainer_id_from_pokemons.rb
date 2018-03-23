class RemoveTrainerIdFromPokemons < ActiveRecord::Migration[5.1]
  def change
    remove_column :pokemons, :trainer_id, :integer
  end
end
