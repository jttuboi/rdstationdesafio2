class AddColumnSalesforceIdToPessoas < ActiveRecord::Migration
  def change
    add_column :pessoas, :salesforce_id, :string
  end
end
