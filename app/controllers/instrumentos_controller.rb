class InstrumentosController < ApplicationController
  # GET /instrumentos
  # GET /instrumentos.json
  def index
    @instrumentos = Instrumento.order('cod').all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @instrumentos }
    end
  end

  # GET /instrumentos/1
  # GET /instrumentos/1.json
  def show
    @instrumento = Instrumento.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @instrumento }
    end
  end

  # GET /instrumentos/new
  # GET /instrumentos/new.json
  def new
    @instrumento = Instrumento.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @instrumento }
    end
  end

  # GET /instrumentos/1/edit
  def edit
    @instrumento = Instrumento.find(params[:id])
  end

  # POST /instrumentos
  # POST /instrumentos.json
  def create
    @instrumento = Instrumento.new(params[:instrumento])

    respond_to do |format|
      if @instrumento.save
        format.html { redirect_to @instrumento, notice: 'Instrumento creado.' }
        format.json { render json: @instrumento, status: :created, location: @instrumento }
      else
        format.html { render action: "new" }
        format.json { render json: @instrumento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /instrumentos/1
  # PUT /instrumentos/1.json
  def update
    @instrumento = Instrumento.find(params[:id])

    respond_to do |format|
      if @instrumento.update_attributes(params[:instrumento])
        format.html { redirect_to @instrumento, notice: 'Instrumento actualizado.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @instrumento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instrumentos/1
  # DELETE /instrumentos/1.json
  def destroy
    @instrumento = Instrumento.find(params[:id])
    @instrumento.destroy

    respond_to do |format|
      format.html { redirect_to instrumentos_url }
      format.json { head :no_content }
    end
  end
end
