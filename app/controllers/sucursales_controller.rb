class SucursalesController < ApplicationController
  # GET /sucursales
  # GET /sucursales.xml
  def index
    @sucursales = Sucursal.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sucursales }
    end
  end

  # GET /sucursales/1
  # GET /sucursales/1.xml
  def show
    @sucursal = Sucursal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sucursal }
    end
  end

  # GET /sucursales/new
  # GET /sucursales/new.xml
  def new
    @sucursal = Sucursal.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sucursal }
    end
  end

  # GET /sucursales/1/edit
  def edit
    @sucursal = Sucursal.find(params[:id])
  end

  # POST /sucursales
  # POST /sucursales.xml
  def create
    @sucursal = Sucursal.new(params[:sucursal])

    respond_to do |format|
      if @sucursal.save
        format.html { redirect_to(@sucursal, :notice => 'Sucursal was successfully created.') }
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
        format.html { redirect_to(@sucursal, :notice => 'Sucursal was successfully updated.') }
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
      format.html { redirect_to(sucursales_url) }
      format.xml  { head :ok }
    end
  end
end
