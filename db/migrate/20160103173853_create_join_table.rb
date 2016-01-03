class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :recipes, :keywords do |t|
      # t.index [:recipe_id, :keyword_id]
      # t.index [:keyword_id, :recipe_id]
    end
  end
end
