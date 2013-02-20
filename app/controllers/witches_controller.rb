class WitchesController < ApplicationController
  # GET /witches
  # GET /witches.json
  def index
    @witches = Witch.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @witches }
    end
  end

  # GET /witches/1
  # GET /witches/1.json
  def show
    @witch = Witch.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @witch }
    end
  end

  # GET /witches/new
  # GET /witches/new.json
  def new
    @witch = Witch.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @witch }
    end
  end

  # GET /witches/1/edit
  def edit
    @witch = Witch.find(params[:id])
  end

  # POST /witches
  # POST /witches.json
  def create
    @witch = Witch.new(params[:witch])

    respond_to do |format|
      if @witch.save
        format.html { redirect_to @witch, notice: 'Witch was successfully created.' }
        format.json { render json: @witch, status: :created, location: @witch }
      else
        format.html { render action: "new" }
        format.json { render json: @witch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /witches/1
  # PUT /witches/1.json
  def update
    @witch = Witch.find(params[:id])

    respond_to do |format|
      if @witch.update_attributes(params[:witch])
        format.html { redirect_to @witch, notice: 'Witch was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @witch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /witches/1
  # DELETE /witches/1.json
  def destroy
    @witch = Witch.find(params[:id])
    @witch.destroy

    respond_to do |format|
      format.html { redirect_to witches_url }
      format.json { head :no_content }
    end
  end
end
