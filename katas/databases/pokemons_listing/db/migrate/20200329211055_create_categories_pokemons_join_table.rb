class CreateCategoriesPokemonsJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :categories, :pokemons do |t|
      t.index :category_id
      t.index :pokemon_id
    end
  end
end
