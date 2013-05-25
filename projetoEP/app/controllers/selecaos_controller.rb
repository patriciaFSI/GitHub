class SelecaosController < ApplicationController
  # GET /selecaos
  # GET /selecaos.json
  def index
    @selecaos = Selecao.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @selecaos }
    end
  end

  # GET /selecaos/1
  # GET /selecaos/1.json
  def show
    @selecao = Selecao.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @selecao }
    end
  end

  # GET /selecaos/new
  # GET /selecaos/new.json
  def new
    @selecao = Selecao.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @selecao }
    end
  end

  # GET /selecaos/1/edit
  def edit
    @selecao = Selecao.find(params[:id])
  end

  # POST /selecaos
  # POST /selecaos.json
  def create
    @selecao = Selecao.new(params[:selecao])

    respond_to do |format|
      if @selecao.save
        format.html { redirect_to @selecao, notice: 'Selecao was successfully created.' }
        format.json { render json: @selecao, status: :created, location: @selecao }
      else
        format.html { render action: "new" }
        format.json { render json: @selecao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /selecaos/1
  # PUT /selecaos/1.json
  def update
    @selecao = Selecao.find(params[:id])

    respond_to do |format|
      if @selecao.update_attributes(params[:selecao])
        format.html { redirect_to @selecao, notice: 'Selecao was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @selecao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /selecaos/1
  # DELETE /selecaos/1.json
  def destroy
    @selecao = Selecao.find(params[:id])
    @selecao.destroy

    respond_to do |format|
      format.html { redirect_to selecaos_url }
      format.json { head :no_content }
    end
  end
end
