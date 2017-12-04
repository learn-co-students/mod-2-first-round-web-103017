class AddSuperheroIdToSuperpower < ActiveRecord::Migration[5.0]
  def change
    add_column :superpowers, :superhero_id, :integer
  end
end
