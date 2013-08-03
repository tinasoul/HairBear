class PhotosController < ApplicationController

  def create
    @user = User.find(params[:user_id])
    @photo = @user.photos.build(params[:photo])


    respond_to do |format|
      if @photo.save
        format.html { redirect_to :back, notice: 'User was successfully created.' }
        format.json { render json: @photo, status: :created, location: @user }
      else
        format.html { render action: "new" }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end

  end

end
