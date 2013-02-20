class ScribblingsController < ApplicationController
  # GET /scribblings
  # GET /scribblings.json
  def index
    @scribblings = Scribbling.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @scribblings }
    end
  end

  # GET /scribblings/1
  # GET /scribblings/1.json
  def show
    @scribbling = Scribbling.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @scribbling }
    end
  end

  # GET /scribblings/new
  # GET /scribblings/new.json
  def new
    @scribbling = Scribbling.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @scribbling }
    end
  end

  # GET /scribblings/1/edit
  def edit
    @scribbling = Scribbling.find(params[:id])
  end

  # POST /scribblings
  # POST /scribblings.json
  def create
    @scribbling = Scribbling.new(params[:scribbling])

    respond_to do |format|
      if @scribbling.save
        format.html { redirect_to @scribbling, notice: 'Scribbling was successfully created.' }
        format.json { render json: @scribbling, status: :created, location: @scribbling }
      else
        format.html { render action: "new" }
        format.json { render json: @scribbling.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /scribblings/1
  # PUT /scribblings/1.json
  def update
    @scribbling = Scribbling.find(params[:id])

    respond_to do |format|
      if @scribbling.update_attributes(params[:scribbling])
        format.html { redirect_to @scribbling, notice: 'Scribbling was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @scribbling.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scribblings/1
  # DELETE /scribblings/1.json
  def destroy
    @scribbling = Scribbling.find(params[:id])
    @scribbling.destroy

    respond_to do |format|
      format.html { redirect_to scribblings_url }
      format.json { head :no_content }
    end
  end
end
