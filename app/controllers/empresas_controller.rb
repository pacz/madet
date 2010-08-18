class EmpresasController < ApplicationController
  before_filter :find_empresa, :only => [:show, :edit, :update, :destroy]

  def index
    @empresas = Empresa.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @empresas }
    end
  end

  def show
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @empresa }
    end
  end

 
  def new
    @empresa = Empresa.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @empresa }
    end
  end

  
  def edit
    
  end

 
  def create
    @empresa = Empresa.new(params[:empresa])

    respond_to do |format|
      if @empresa.save
        format.html { redirect_to(@empresa, :notice => 'Empresa creada Satisfactoriamente.') }
        format.xml  { render :xml => @empresa, :status => :created, :location => @empresa }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @empresa.errors, :status => :unprocessable_entity }
      end
    end
  end

 
  def update
    
    respond_to do |format|
      if @empresa.update_attributes(params[:empresa])
        format.html { redirect_to(@empresa, :notice => 'Empresa actualizada satisfactoriamente.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @empresa.errors, :status => :unprocessable_entity }
      end
    end
  end

 
  def destroy
    @empresa.destroy

    respond_to do |format|
      format.html { redirect_to(empresas_url) }
      format.xml  { head :ok }
    end
  end

  private
  def find_empresa
    @empresa = Empresa.find(params[:id])
  end
end
