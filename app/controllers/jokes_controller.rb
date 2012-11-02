class JokesController < ApplicationController
  # GET /jokes
  # GET /jokes.json
  def index
    @profile = Profile.find(params[:profile_id])
    @jokes = @profile.jokes.order("created_at DESC");

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @jokes }
    end
  end

  # GET /jokes/new
  # GET /jokes/new.json
  def new
    @profile = Profile.find(params[:profile_id])
    @joke = @profile.jokes.new 

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @joke }
    end
  end

  # GET /jokes/1/edit
  def edit
    @joke = Joke.find(params[:id])
  end

  # POST /jokes
  # POST /jokes.json
  def create
    @profile = Profile.find(params[:profile_id])
    @joke = @profile.jokes.create!(params[:joke]) 

    redirect_to profile_jokes_path(@profile), :notice => "Created that thing!"

  end

  # PUT /jokes/1
  # PUT /jokes/1.json
  def update
    @joke = Joke.find(params[:id])

    respond_to do |format|
      if @joke.update_attributes(params[:joke])
        format.html { redirect_to @joke, :notice => 'Joke was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @joke.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /jokes/1
  # DELETE /jokes/1.json
  def destroy
    @joke = Joke.find(params[:id])
    @joke.destroy

    respond_to do |format|
      format.html { redirect_to jokes_url }
      format.json { head :no_content }
    end
  end
end
