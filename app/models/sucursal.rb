class Sucursal < ActiveRecord::Base
  belongs_to :empresa
  
  validates_presence_of :direccion, :message => 'Este campo no puede estar vacio. '
  validates_presence_of :ciudad, :message => 'Este campo no puede estar vacio. '
  validates_presence_of :administrador, :message => 'Este campo no puede estar vacio. '
end
