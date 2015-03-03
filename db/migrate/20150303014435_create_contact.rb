class CreateContact < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name, default: ''
      t.string :email, default: ''
      t.string :subject, default: ''
      t.text :message, default: ''

      t.timestamps
    end
  end
end
