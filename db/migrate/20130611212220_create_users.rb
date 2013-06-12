class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :initials

      t.timestamps
    end
  end
end
