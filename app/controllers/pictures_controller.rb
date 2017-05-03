class PicturesController < ApplicationController
  def new_form
    render("pic_templates/new_form.html.erb")
  end

  def create_row
    p = Photo.new
    p.source =params["the_source"]
    p.caption =params["the_caption"]
    p.save
    @current_count = Photo.count
    #render("pic_templates/create_row.html.erb")
    @list_of_photos = Photo.all
    #redirect_to("/photos/(#{:the_id})")
    redirect_to("/photos")
    #redirect_to(/photos)
  end

  def index
    @list_of_photos = Photo.all
    render("pic_templates/index.html.erb")
  end

  def home
    @list_of_photos = Photo.all
    render("pic_templates/home.html.erb")
  end

  def show
    @my_photo = Photo.find(params["the_id"])
    render("pic_templates/show.html.erb")
  end

  def edit_form
    @my_photo = Photo.find(params["the_id"])
    render("pic_templates/edit_form.html.erb")
  end

  def update_row
    @my_photo = Photo.find(params["the_id"])
    @my_photo.source =params["the_source"]
    @my_photo.caption =params["the_caption"]
    @my_photo.save
    redirect_to("/photos/#{@my_photo.id}")
  end

  def destroy_row
    #redirect_to(/photos)
    my_photo = Photo.find(params["the_id"])
    my_photo.destroy
    redirect_to("/photos")
    #render("pic_templates/destroy_row.html.erb")
  end
end
