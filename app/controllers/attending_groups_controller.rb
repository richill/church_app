class AttendingGroupsController < ApplicationController
  before_action :authenticate_user!, :set_smallgroup

  def create
    if Attendance.find_or_create_by(attendable: @smallgroup, user: current_user)
      redirect_to :back, notice: 'Joined Group'
    else
      redirect_to :back, alert: 'Something went wrong...*sad panda*'
    end
  end

  
  def destroy
    Attendance.where(attendable_id: @smallgroup.id, user_id: current_user.id).first.destroy
    redirect_to :back, notice: 'Left Group'
  end
  
  private
  def set_smallgroup
    @smallgroup = Smallgroup.friendly.find(params[:smallgroup_id] || params[:id])
  end
end
