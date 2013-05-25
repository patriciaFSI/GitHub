class JuizsController < ApplicationController
  # GET /juizs
  # GET /juizs.json
  def index
    @juizs = Juiz.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @juizs }
    end
  end

  # GET /juizs/1
  # GET /juizs/1.json
  def show
    @juiz = Juiz.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @juiz }
    end
  end

  # GET /juizs/new
  # GET /juizs/new.json
  def new
    @juiz = Juiz.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @juiz }
    end
  end

  # GET /juizs/1/edit
  def edit
    @juiz = Juiz.find(params[:id])
  end

  # POST /juizs
  # POST /juizs.json
  def create
    @juiz = Juiz.new(params[:juiz])

    respond_to do |format|
      if @juiz.save
        format.html { redirect_to @juiz, notice: 'Juiz was successfully created.' }
        format.json { render json: @juiz, status: :created, location: @juiz }
      else
        format.html { render action: "new" }
        format.json { render json: @juiz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /juizs/1
  # PUT /juizs/1.json
  def update
    @juiz = Juiz.find(params[:id])

    respond_to do |format|
      if @juiz.update_attributes(params[:juiz])
        format.html { redirect_to @juiz, notice: 'Juiz was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @juiz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /juizs/1
  # DELETE /juizs/1.json
  def destroy
    @juiz = Juiz.find(params[:id])
    @juiz.destroy

    respond_to do |format|
      format.html { redirect_to juizs_url }
      format.json { head :no_content }
    end
  end
end
