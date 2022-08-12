class BookingsController < ApplicationController
    skip_before_action :authorized_user

    def create    
        @booking=Booking.create(booking_params)
        @booking.status="Pending"
        if @booking.save
            render json:{comment: "saved Successfully"}
        else
            render json: {error: "Denied"}
        end
    end

    def chef_bookings
        @chef=Chef.find(params[:id])
        bookings=@chef.bookings
        # render json: bookings
        render json: {bookings: BookingSerializer.new(bookings)}
    end

    def update
        @booking=Booking.find(params[:id])
        @booking.update(booking_params)
        if @booking.save
            render json: {data: "Updated Successfully"}
        else
            render json: {error: "Error Cunt"}
        end
    end

    private

    def booking_params
        params.require(:booking).permit(:price, :date, :guest_count,:address,:user_id,:chef_id,:status)
    end
end
