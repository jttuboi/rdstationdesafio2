class AddColumnUserIdToPessoas < ActiveRecord::Migration
  def change
    add_column :pessoas, :user_id, :integer
  end
end
