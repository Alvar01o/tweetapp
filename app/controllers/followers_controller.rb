class FollowersController < ApplicationController
  # GET /followers
  # GET /followers.json
  def index
    @followers = Follower.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @followers }
    end
  end

  # GET /followers/1
  # GET /followers/1.json
  def show
    @follower = Follower.find(params[:id])
      redirect_to request.env['REQUEST_URI']      
  end


  # GET /followers/new
  # GET /followers/new.json
  def new
    @follower = Follower.new(params[:follower])
    @follower.id_user = current_user.id 
      if @follower.save
        redirect_to user_path(@follower.id_follow)
      end 
  
  end

  # GET /followers/1/edit
  def edit
    @follower = Follower.find(params[:id])
  end

  # POST /followers
  # POST /followers.json
  def create
    @follower = Follower.new(params[:follower])

    respond_to do |format|
      if @follower.save
        format.html { redirect_to @follower, notice: 'Follower was successfully created.' }
        format.json { render json: @follower, status: :created, location: @follower }
      else
        format.html { render action: "new" }
        format.json { render json: @follower.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /followers/1
  # PUT /followers/1.json
  def update
    @follower = Follower.find(params[:id])

  end

  # DELETE /followers/1
  # DELETE /followers/1.json
  def destroy
    @follower = Follower.find(params[:id])

    if @follower.destroy
      redirect_to request.env['HTTP_REFERER']      
    end 
  end

end
