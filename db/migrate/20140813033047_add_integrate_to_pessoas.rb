class AddIntegrateToPessoas < ActiveRecord::Migration
  def change
    add_column :pessoas, :integrate, :boolean, :default => false
  end
end
