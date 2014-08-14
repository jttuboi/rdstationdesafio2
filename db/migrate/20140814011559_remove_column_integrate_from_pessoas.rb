class RemoveColumnIntegrateFromPessoas < ActiveRecord::Migration
  def change
    remove_column :pessoas, :integrate, :boolean
  end
end
