class BoardsController < ApplicationController
  def index
    @boards = Board.all

    render("boards/index.html.erb")
  end

  def show
    @board = Board.find(params[:id])

    render("boards/show.html.erb")
  end

  def new
    @board = Board.new

    render("boards/new.html.erb")
  end

  def create
    @board = Board.new

    @board.title = params[:title]
    @board.description = params[:description]

    save_status = @board.save

    if save_status == true
      redirect_to("/boards/#{@board.id}", :notice => "Board created successfully.")
    else
      render("boards/new.html.erb")
    end
  end

  def edit
    @board = Board.find(params[:id])

    render("boards/edit.html.erb")
  end

  def update
    @board = Board.find(params[:id])

    @board.title = params[:title]
    @board.description = params[:description]

    save_status = @board.save

    if save_status == true
      redirect_to("/boards/#{@board.id}", :notice => "Board updated successfully.")
    else
      render("boards/edit.html.erb")
    end
  end

  def destroy
    @board = Board.find(params[:id])

    @board.destroy

    if URI(request.referer).path == "/boards/#{@board.id}"
      redirect_to("/", :notice => "Board deleted.")
    else
      redirect_to(:back, :notice => "Board deleted.")
    end
  end
end
