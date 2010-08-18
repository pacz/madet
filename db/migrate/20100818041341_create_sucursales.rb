class CreateSucursales < ActiveRecord::Migration
  def self.up
    create_table :sucursales do |t|
      t.references :empresa
      t.string :ciudad
      t.string :direccion
      t.string :administrador

      t.timestamps
    end
  end

  def self.down
    drop_table :sucursales
  end
end
