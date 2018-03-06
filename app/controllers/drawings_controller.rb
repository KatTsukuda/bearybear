class DrawingsController < ApplicationController

def index
  @drawings = Drawing.all
end

def new
  @drawing = Drawing.new
end

def create
  @drawing = Drawing.create(drawing_params)
  redirect_to root_path
end

def edit
  set_drawing
end

def show
  @drawing = Drawing.friendly.find(params[:id])
end

private

  def drawing_params
    params.require(:drawing).permit(:title, :description, :tag, :link)
  end

  def set_drawing
    @drawing = Drawing.friendly.find(params[:id])
  end

end
