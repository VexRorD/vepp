class AddOtherFieldsToModel < ActiveRecord::Migration[5.2]
  def change
    add_column :models, :phone_number, :string
    add_column :models, :description, :text
  end
end
