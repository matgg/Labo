class PrestamoLibrosController < ApplicationController
  # GET /prestamo_libros
  # GET /prestamo_libros.json
  def index
    @prestamo_libros = PrestamoLibro.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @prestamo_libros }
    end
  end

  # GET /prestamo_libros/1
  # GET /prestamo_libros/1.json
  def show
    @prestamo_libro = PrestamoLibro.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @prestamo_libro }
    end
  end

  # GET /prestamo_libros/new
  # GET /prestamo_libros/new.json
  def new
    @prestamo_libro = PrestamoLibro.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @prestamo_libro }
    end
  end

  # GET /prestamo_libros/1/edit
  def edit
    @prestamo_libro = PrestamoLibro.find(params[:id])
  end

  # POST /prestamo_libros
  # POST /prestamo_libros.json
  def create
    @prestamo_libro = PrestamoLibro.new(params[:prestamo_libro])

    respond_to do |format|
      if @prestamo_libro.save
        format.html { redirect_to @prestamo_libro, notice: 'Prestamo libro was successfully created.' }
        format.json { render json: @prestamo_libro, status: :created, location: @prestamo_libro }
      else
        format.html { render action: "new" }
        format.json { render json: @prestamo_libro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /prestamo_libros/1
  # PUT /prestamo_libros/1.json
  def update
    @prestamo_libro = PrestamoLibro.find(params[:id])

    respond_to do |format|
      if @prestamo_libro.update_attributes(params[:prestamo_libro])
        format.html { redirect_to @prestamo_libro, notice: 'Prestamo libro was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @prestamo_libro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prestamo_libros/1
  # DELETE /prestamo_libros/1.json
  def destroy
    @prestamo_libro = PrestamoLibro.find(params[:id])
    @prestamo_libro.destroy

    respond_to do |format|
      format.html { redirect_to prestamo_libros_url }
      format.json { head :no_content }
    end
  end
end
