class SucursalesController < ApplicationController
  # GET /sucursales
  # GET /sucursales.xml
  before_filter :find_empresa
  def index
    
    @sucursales = @empresa.sucursales

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sucursales }
    end
  end

  # GET /sucursales/1
  # GET /sucursales/1.xml
  def show
    
    @sucursal = @empresa.sucursales.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sucursal }
    end
  end

  # GET /sucursales/new
  # GET /sucursales/new.xml
  def new
    
    @sucursal = @empresa.sucursales.build

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sucursal }
    end
  end

  # GET /sucursales/1/edit
  def edit
    
    @sucursal = @empresa.sucursales.find(params[:id])
  end

  # POST /sucursales
  # POST /sucursales.xml
  def create
    
    @sucursal = @empresa.sucursales.build(params[:sucursal])

    respond_to do |format|
      if @sucursal.save
        format.html { redirect_to(empresa_sucursal_path(@empresa,@sucursal), :notice => 'Sucursal creada Exitosamente ...!.') }
        format.xml  { render :xml => @sucursal, :status => :created, :location => @sucursal }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sucursal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sucursales/1
  # PUT /sucursales/1.xml
  def update
     
    @sucursal = Sucursal.find(params[:id])

    respond_to do |format|
      if @sucursal.update_attributes(params[:sucursal])
        format.html { redirect_to(empresa_sucursal_path(@empresa,@sucursal), :notice => 'Sucursal actualizada Exitosamente....!') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sucursal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sucursales/1
  # DELETE /sucursales/1.xml
  def destroy
    
    @sucursal = Sucursal.find(params[:id])
    @sucursal.destroy

    respond_to do |format|
      format.html { redirect_to(empresa_sucursales_url(@empresa)) }
      format.xml  { head :ok }
    end
  end

  private
  def find_empresa
    @empresa = Empresa.find(params[:empresa_id])
  end
end
