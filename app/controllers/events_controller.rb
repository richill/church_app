class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    @events = Event.approved_events.listed_events.asc_order
  end

  def show
  end

  def new
    #@event = Event.new
    @user = current_user
    @event = @user.events.build
  end

  def edit
  end

  # def create
  #   @event = Event.new(event_params)

  #   respond_to do |format|
  #     if @event.save
  #       format.html { redirect_to @event, notice: 'Event was successfully created.' }
  #       format.json { render :show, status: :created, location: @event }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @event.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end
  def create
    @user = current_user
    @event = @user.events.create(event_params)

    respond_to do |format|
        if @event.save
          format.html { redirect_to stats_events_user_path(@user), notice: 'Event was successfully created.' }
          format.json { render :show, status: :created, location: @event }
        else
          format.html { render :new }
          format.json { render json: @event.errors, status: :unprocessable_entity }
        end
      end
  end

  # def update
  #   respond_to do |format|
  #     if @event.update(event_params)
  #       format.html { redirect_to @event, notice: 'Event was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @event }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @event.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end
  def update
    @user = current_user

    respond_to do |format|
        if @event.update_attributes(event_params)
          format.html { redirect_to stats_events_user_path(@user), notice: 'Event was successfully updated.' }
          format.json { render :show, status: :ok, location: @event }
        else
          format.html { render :edit }
          format.json { render json: @event.errors, status: :unprocessable_entity }
        end
      end
  end

  # def destroy
  #   @event.destroy
  #   respond_to do |format|
  #     format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end
  def destroy
    @user = current_user
    @event = @user.events.friendly.find(params[:id])
    @event.destroy
    redirect_to stats_events_user_path(@user)
  end

  def calendareventspg
    @events = Event.approved_events
  end

  def youtheventspg
    @events = Event.approved_events.youth_events
  end

  def churcheventspg
    @events = Event.approved_events.church_events
  end

  def communityeventspg
    @events = Event.approved_events.community_events
  end

  def nationaleventspg
    @events = Event.approved_events.national_events
  end

  private
    def set_event
      @event = Event.friendly.find(params[:id])
    end

    def event_params
      params.require(:event).permit(:name, :start_time, :end_time, :category_event_id, :description, :address, :city, :postcode, :link, :image, :category_country_id, :linkmap, :user_id, :approve, :close)
    end
end
