class CardColorsController < ApplicationController
  # GET /card_colors
  # GET /card_colors.json
  def index
    @card_colors = CardColor.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @card_colors }
    end
  end

  # GET /card_colors/1
  # GET /card_colors/1.json
  def show
    @card_color = CardColor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @card_color }
    end
  end

  # GET /card_colors/new
  # GET /card_colors/new.json
  def new
    @card_color = CardColor.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @card_color }
    end
  end

  # GET /card_colors/1/edit
  def edit
    @card_color = CardColor.find(params[:id])
  end

  # POST /card_colors
  # POST /card_colors.json
  def create
    @card_color = CardColor.new(params[:card_color])

    respond_to do |format|
      if @card_color.save
        format.html { redirect_to @card_color, notice: 'Card color was successfully created.' }
        format.json { render json: @card_color, status: :created, location: @card_color }
      else
        format.html { render action: "new" }
        format.json { render json: @card_color.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /card_colors/1
  # PUT /card_colors/1.json
  def update
    @card_color = CardColor.find(params[:id])

    respond_to do |format|
      if @card_color.update_attributes(params[:card_color])
        format.html { redirect_to @card_color, notice: 'Card color was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @card_color.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /card_colors/1
  # DELETE /card_colors/1.json
  def destroy
    @card_color = CardColor.find(params[:id])
    @card_color.destroy

    respond_to do |format|
      format.html { redirect_to card_colors_url }
      format.json { head :ok }
    end
  end
end
