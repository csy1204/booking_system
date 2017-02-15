class BookingsController < ApplicationController

  def index

  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.major = current_user.major
    respond_to do |format|
      if @booking.save
        format.html { redirect_to root_url, notice: 'Booking was successfully created.' }
      else
        format.html { redirect_to root_url, notice: '실패했습니다' }
      end
    end
  end

  def show

  end

  def edit

  end

  def update

  end

  def destroy
    @book = Booking.find(params[:id])
    @book.destroy

    redirect_to root_url, notice: '삭제에 성공했습니다'
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :locker_id, :use_start, :use_end)
  end
end
