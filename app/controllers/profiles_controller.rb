class ProfilesController < ApplicationController

  before_action :set_profile, only: [:show, :edit, :update, :destroy]
  before_action :correct_therapist, only: [:edit, :update, :destroy]
  before_action :authenticate_therapist!, except: [:index, :show]
  before_action :set_options_for_state, only: [:new, :edit]


  def index
    # @profiles = Profile.all
    if params[:q]
      @profiles = Profile.search_profile(params[:q])
    else
      @profiles = Profile.all
    end 
  end

  def show
  end

  def new
    @profile = current_therapist.build_profile
  end

  def edit
  end

  def create
    @profile = current_therapist.build_profile(profile_params)
    if @profile.save
      current_therapist.profile = @profile
      redirect_to @profile, notice: 'Profile was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @profile.update(profile_params)
      redirect_to @profile, notice: 'Profile was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @profile.destroy
    redirect_to profiles_url
  end

  private

    def set_profile
      @profile = Profile.find(params[:id])
    end

    def correct_therapist
      @profile = current_therapist.profile #.find_by(id: params[:id])
      redirect_to profiles_path, notice: "Not authorized to edit this profile." if @profile.nil?
    end

    def profile_params
      params.require(:profile).permit(:first_name, :last_name, :address_one, :address_two, :city, :state, :zip, :phone, :degree, :university, :therapeutic_style, :years_of_practice, :accepting_new_patients, :image)
    end

    def set_options_for_state
      @options_for_state = ["DC", "MD", "VA"]
    end
end