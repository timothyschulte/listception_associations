class ListsController < ApplicationController
  def index
    @lists = List.all

    render("lists/index.html.erb")
  end

  def show
    @list = List.find(params[:id])

    render("lists/show.html.erb")
  end

  def new
    @list = List.new

    render("lists/new.html.erb")
  end

  def create
    @list = List.new

    @list.title = params[:title]
    @list.board_id = params[:board_id]
    @list.position_order = params[:position_order]

    save_status = @list.save

    if save_status == true
      redirect_to("/lists/#{@list.id}", :notice => "List created successfully.")
    else
      render("lists/new.html.erb")
    end
  end

  def edit
    @list = List.find(params[:id])

    render("lists/edit.html.erb")
  end

  def update
    @list = List.find(params[:id])

    @list.title = params[:title]
    @list.board_id = params[:board_id]
    @list.position_order = params[:position_order]

    save_status = @list.save

    if save_status == true
      redirect_to("/lists/#{@list.id}", :notice => "List updated successfully.")
    else
      render("lists/edit.html.erb")
    end
  end

  def destroy
    @list = List.find(params[:id])

    @list.destroy

    if URI(request.referer).path == "/lists/#{@list.id}"
      redirect_to("/", :notice => "List deleted.")
    else
      redirect_to(:back, :notice => "List deleted.")
    end
  end
end
