class CreatePessoas < ActiveRecord::Migration
  def change
    create_table :pessoas do |t|
      t.string :name, :limit => 40
      t.string :last_name, :limit => 80
      t.string :email
      t.string :company, :null => false
      t.string :job_title
      t.string :phone
      t.string :website

      t.timestamps
    end
  end
end
