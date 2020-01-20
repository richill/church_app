class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    @events = Event.approved_events.active_events.open_events.listed_events.desc_order
  end

  def show
  end

  def new
    if user_signed_in? && current_user.admin
      @user = current_user
      @event = @user.events.build
    else
      redirect_to error_path
    end
  end

  def edit
    unless user_signed_in? && current_user.admin
      redirect_to error_path
    end
  end

  def create
    if user_signed_in? && current_user.admin
      @user = current_user
      @event = @user.events.create(event_params)
      respond_to do |format|
        if @event.save
          format.html { redirect_to event_path(@event), notice: 'Event was successfully created.' }
          format.json { render :show, status: :created, location: @event }
        else
          format.html { render :new }
          format.json { render json: @event.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to error_path
    end
  end

  def update
    if user_signed_in? && current_user.admin
      @user = current_user
      respond_to do |format|
        if @event.update_attributes(event_params)
          format.html { redirect_to event_path(@event), notice: 'Event was successfully updated.' }
          format.json { render :show, status: :ok, location: @event }
        else
          format.html { render :edit }
          format.json { render json: @event.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to error_path
    end
  end

  def destroy
    if user_signed_in? && current_user.admin
      @user = current_user
      @event = @user.events.friendly.find(params[:id])
      @event.destroy
      redirect_to stats_events_user_path(@user)
    else
      redirect_to error_path
    end
  end

  def calendareventspg
    @events = Event.approved_events.active_events.open_events.listed_events.desc_order
  end

  def youtheventspg
    @events = Event.approved_events.youth_events.active_events.open_events.listed_events.desc_order
  end

  def churcheventspg
    @events = Event.approved_events.church_events.active_events.open_events.listed_events.desc_order
  end

  def communityeventspg
    @events = Event.approved_events.community_events.active_events.open_events.listed_events.desc_order
  end

  def nationaleventspg
    @events = Event.approved_events.national_events.active_events.open_events.listed_events.desc_order
  end

  private
    def set_event
      @event = Event.friendly.find(params[:id])
    end

    def event_params
      params.require(:event).permit(:name, :start_time, :end_time, :category_event_id, :description, :address, :city, :postcode, :link, :image, :category_country_id, :linkmap, :user_id, :approve, :close, :image_url, :linkurl)
    end
end
