class AddSpeudoToModel < ActiveRecord::Migration[5.2]
  def change
    add_column :models, :speudo, :string
  end
end
