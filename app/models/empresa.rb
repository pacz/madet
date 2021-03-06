class Empresa < ActiveRecord::Base
  has_many :sucursales, :dependent => :destroy #borra en cascada los registros relacionados con esta empresa.
  validates_presence_of :nit, :message => 'Este campo no puede estar vacio. '
  validates_presence_of :nombre, :message => 'Este campo no puede estar vacio. '
  validates_presence_of :fch_creacion, :message => 'Este campo no puede estar vacio. '
  validates_presence_of :actividad, :message => 'Este campo no puede estar vacio. '
  validates_presence_of :nro_empleados, :message => 'Este campo no puede estar vacio. '
  validates_numericality_of :nro_empleados, :message => 'Debe ingresar un valor numèrico para este campo.'
  
end
