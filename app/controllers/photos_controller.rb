class PhotosController < ApplicationController
  def new
    @photo = Photo.new
  end

  def index
    @photos = Photo.page(params[:page]).per(5)
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def create
   @photo = Photo.new(permit_photo)
   @photo.user_id = current_user.id
   if @photo.save
     redirect_to action: :index
   else
     redirect_to new_photo_path
   end
 end

 def destroy
   @photo = Photo.find(params[:id])
   @photo.destroy
   redirect_to action: :index
 end

  private

  def permit_photo
    params.require(:photo).permit(:file,:description)
  end
end
