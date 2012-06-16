class PrestamoInstrumentosController < ApplicationController
  # GET /prestamo_instrumentos
  # GET /prestamo_instrumentos.json
  def index
    @prestamo_instrumentos = PrestamoInstrumento.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @prestamo_instrumentos }
    end
  end

  # GET /prestamo_instrumentos/1
  # GET /prestamo_instrumentos/1.json
  def show
    @prestamo_instrumento = PrestamoInstrumento.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @prestamo_instrumento }
    end
  end

  # GET /prestamo_instrumentos/new
  # GET /prestamo_instrumentos/new.json
  def new
    @prestamo_instrumento = PrestamoInstrumento.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @prestamo_instrumento }
    end
  end

  # GET /prestamo_instrumentos/1/edit
  def edit
    @prestamo_instrumento = PrestamoInstrumento.find(params[:id])
  end

  # POST /prestamo_instrumentos
  # POST /prestamo_instrumentos.json
  def create
    @prestamo_instrumento = PrestamoInstrumento.new(params[:prestamo_instrumento])

    respond_to do |format|
      if @prestamo_instrumento.save
        format.html { redirect_to @prestamo_instrumento, notice: 'Prestamo instrumento was successfully created.' }
        format.json { render json: @prestamo_instrumento, status: :created, location: @prestamo_instrumento }
      else
        format.html { render action: "new" }
        format.json { render json: @prestamo_instrumento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /prestamo_instrumentos/1
  # PUT /prestamo_instrumentos/1.json
  def update
    @prestamo_instrumento = PrestamoInstrumento.find(params[:id])

    respond_to do |format|
      if @prestamo_instrumento.update_attributes(params[:prestamo_instrumento])
        format.html { redirect_to @prestamo_instrumento, notice: 'Prestamo instrumento was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @prestamo_instrumento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prestamo_instrumentos/1
  # DELETE /prestamo_instrumentos/1.json
  def destroy
    @prestamo_instrumento = PrestamoInstrumento.find(params[:id])
    @prestamo_instrumento.destroy

    respond_to do |format|
      format.html { redirect_to prestamo_instrumentos_url }
      format.json { head :no_content }
    end
  end
end
