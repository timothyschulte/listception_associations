class CardsController < ApplicationController
  def index
    @cards = Card.all

    render("cards/index.html.erb")
  end

  def show
    @card = Card.find(params[:id])

    render("cards/show.html.erb")
  end

  def new
    @card = Card.new

    render("cards/new.html.erb")
  end

  def create
    @card = Card.new

    @card.title = params[:title]
    @card.description = params[:description]
    @card.list_id = params[:list_id]
    @card.position_order = params[:position_order]

    save_status = @card.save

    if save_status == true
      redirect_to("/cards/#{@card.id}", :notice => "Card created successfully.")
    else
      render("cards/new.html.erb")
    end
  end

  def edit
    @card = Card.find(params[:id])

    render("cards/edit.html.erb")
  end

  def update
    @card = Card.find(params[:id])

    @card.title = params[:title]
    @card.description = params[:description]
    @card.list_id = params[:list_id]
    @card.position_order = params[:position_order]

    save_status = @card.save

    if save_status == true
      redirect_to("/cards/#{@card.id}", :notice => "Card updated successfully.")
    else
      render("cards/edit.html.erb")
    end
  end

  def destroy
    @card = Card.find(params[:id])

    @card.destroy

    if URI(request.referer).path == "/cards/#{@card.id}"
      redirect_to("/", :notice => "Card deleted.")
    else
      redirect_to(:back, :notice => "Card deleted.")
    end
  end
end
