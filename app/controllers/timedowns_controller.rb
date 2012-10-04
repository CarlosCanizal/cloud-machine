class TimedownsController < ApplicationController
  # GET /timedowns
  # GET /timedowns.json
  def index
    @timedowns = Timedown.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @timedowns }
    end
  end

  # GET /timedowns/1
  # GET /timedowns/1.json
  def show
    @timedown = Timedown.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @timedown }
    end
  end

  # GET /timedowns/new
  # GET /timedowns/new.json
  def new
    @timedown = Timedown.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @timedown }
    end
  end

  # GET /timedowns/1/edit
  def edit
    @timedown = Timedown.find(params[:id])
  end

  # POST /timedowns
  # POST /timedowns.json
  def create
    @timedown = Timedown.new(params[:timedown])

    respond_to do |format|
      if @timedown.save
        format.html { redirect_to @timedown, notice: 'Timedown was successfully created.' }
        format.json { render json: @timedown, status: :created, location: @timedown }
      else
        format.html { render action: "new" }
        format.json { render json: @timedown.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /timedowns/1
  # PUT /timedowns/1.json
  def update
    @timedown = Timedown.find(params[:id])

    respond_to do |format|
      if @timedown.update_attributes(params[:timedown])
        format.html { redirect_to @timedown, notice: 'Timedown was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @timedown.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /timedowns/1
  # DELETE /timedowns/1.json
  def destroy
    @timedown = Timedown.find(params[:id])
    @timedown.destroy

    respond_to do |format|
      format.html { redirect_to timedowns_url }
      format.json { head :no_content }
    end
  end
end
