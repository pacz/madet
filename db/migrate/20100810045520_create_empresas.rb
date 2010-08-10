class CreateEmpresas < ActiveRecord::Migration
  def self.up
    create_table :empresas do |t|
      t.string :nit
      t.string :nombre
      t.date :fch_creacion
      t.integer :nro_empleados
      t.string :actividad

      t.timestamps
    end
  end

  def self.down
    drop_table :empresas
  end
end
