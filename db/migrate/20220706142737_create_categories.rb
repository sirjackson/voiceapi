class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories, id: :uuid do |t|
      t.string :category_token
      t.string :model_type
      t.string :name
      t.string :maybe_super_category_token
      t.string :name_for_dropdown
      t.boolean :can_have_subcategories
      t.boolean :can_directly_have_models
      t.boolean :can_only_mods_apply
      t.timestamps
    end
  end
end
