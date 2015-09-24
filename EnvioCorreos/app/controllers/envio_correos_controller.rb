class EnvioCorreosController < ApplicationController
  before_action :set_envio_correo, only: [:show, :edit, :update, :destroy]

  # GET /envio_correos
  # GET /envio_correos.json
  def index
    @envio_correos = EnvioCorreo.all
  end

  # GET /envio_correos/1
  # GET /envio_correos/1.json
  def show
  end

  # GET /envio_correos/new
  def new
    @envio_correo = EnvioCorreo.new
  end

  # GET /envio_correos/1/edit
  def edit
  end

  # POST /envio_correos
  # POST /envio_correos.json
  def create
    @envio_correo = EnvioCorreo.new(envio_correo_params)

    respond_to do |format|
      if @envio_correo.save
        format.html { redirect_to @envio_correo, notice: 'Envio correo was successfully created.' }
        format.json { render :show, status: :created, location: @envio_correo }
      else
        format.html { render :new }
        format.json { render json: @envio_correo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /envio_correos/1
  # PATCH/PUT /envio_correos/1.json
  def update
    respond_to do |format|
      if @envio_correo.update(envio_correo_params)
        format.html { redirect_to @envio_correo, notice: 'Envio correo was successfully updated.' }
        format.json { render :show, status: :ok, location: @envio_correo }
      else
        format.html { render :edit }
        format.json { render json: @envio_correo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /envio_correos/1
  # DELETE /envio_correos/1.json
  def destroy
    @envio_correo.destroy
    respond_to do |format|
      format.html { redirect_to envio_correos_url, notice: 'Envio correo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_envio_correo
      @envio_correo = EnvioCorreo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def envio_correo_params
      params[:envio_correo]
    end
end
