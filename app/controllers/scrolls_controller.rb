class ScrollsController < ApplicationController
  # GET /scrolls
  # GET /scrolls.json
  def index
    @scrolls = Scroll.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @scrolls }
    end
  end

  # GET /scrolls/1
  # GET /scrolls/1.json
  def show
    @scroll = Scroll.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @scroll }
    end
  end

  # GET /scrolls/new
  # GET /scrolls/new.json
  def new
    @scroll = Scroll.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @scroll }
    end
  end

  # GET /scrolls/1/edit
  def edit
    @scroll = Scroll.find(params[:id])
  end

  # POST /scrolls
  # POST /scrolls.json
  def create
    @scroll = Scroll.new(params[:scroll])

    respond_to do |format|
      if @scroll.save
        format.html { redirect_to @scroll, notice: 'Your scroll is now ready for spell storification.  Beware of black magic.' }
        format.json { render json: @scroll, status: :created, location: @scroll }
      else
        format.html { render action: "new" }
        format.json { render json: @scroll.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /scrolls/1
  # PUT /scrolls/1.json
  def update
    @scroll = Scroll.find(params[:id])

    respond_to do |format|
      if @scroll.update_attributes(params[:scroll])
        format.html { redirect_to @scroll, notice: 'Scroll was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @scroll.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scrolls/1
  # DELETE /scrolls/1.json
  def destroy
    @scroll = Scroll.find(params[:id])
    @scroll.destroy

    respond_to do |format|
      format.html { redirect_to scrolls_url }
      format.json { head :no_content }
    end
  end
end
