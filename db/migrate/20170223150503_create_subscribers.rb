class CreateSubscribers < ActiveRecord::Migration[5.0]
  def change
    create_table :subscribers do |t|
      t.string :nombres
      t.string :apellidos
      t.string :correo
      t.string :preferencias

      t.timestamps
    end
  end
end
