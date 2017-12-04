class Heropowers < ActiveRecord::Migration[5.0]
  def change
    create_table :heropowers do |t|
      t.belongs_to :superhero
      t.belongs_to :superpower

      t.timestamps
    end
  end
end
