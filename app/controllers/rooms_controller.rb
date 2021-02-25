class RoomsController < ApplicationController

  # List all rooms
  def all
    @rooms = Room.all
    final_list = []
    for room in @rooms
      final_list.append({
        room_number: room&.number,
        room_type: room&.room_type&.name
      })
    end
    render json: {data: @rooms}, status: 200
  end

  # List all Room Types
  def room_types
    @room_types = RoomType.all
    render json: {data: @room_types}, status: 200
  end

  # List available rooms
  def get_available_rooms
    @rooms = Room.where(status: false, customer_id: nil)
    render json: {data: @rooms}, status: 200
  end

  # checkin
  def checkin
    @history = History.where(room_id: params[:room_id]).last
    if @history&.status == "ONGOING"
      return render json: {message: "Room is already occupied"}, status: 200
    end
    @customer = Customer.where(aadhar_number: params[:customer][:aadhar_number]).first
    @room = Room.where(customer_id: @customer&.id).first
    if @room&.customer_id
      return render json: {message: "Only one room can be booked at a time!"}, status: 200
    end
    if !@customer
      @customer = Customer.create(customer_params)
    end
    @room = Room.find_by_id(params[:room_id])
    @room.status = true
    @room.customer_id = @customer.id
    @history = History.new
    @history.customer_id = @customer.id
    @history.room_id = @room.id
    @history.status = "ONGOING"
    if @room.save && @customer.save && @history.save
      render json: {message: "Thank you!", room: @room, customer: @customer}, status: 200
    else
      render json: {message: 'Thank you!'}, status: 200
    end
  end

  # checkout
  def checkout
    @room = Room.where(id: params[:room_id]).first
    if !@room
      return render json: {message: "Room cannot be found"}, status: 400
    end
    @history = History.where(room_id: params[:room_id]).last
    if !@history || @history&.status == "ENDED"
      return render json: {message: "Not booked yet!"}, status: 400
    end
    @history.status = "ENDED"
    @room.status = false
    @room.customer_id = nil
    if @room.save && @history.save
      render json: {message: "Checked out!", data: @room}, status: 200
    else
      render json: {message: "Error", data: @room}, status: 400
    end
  end

  # show history
  def get_history
    @history = History.all
    render json: {data: @history}, status: 200
  end

  private
  def customer_params
    params.require(:customer).permit(:full_name,:age,:aadhar_number,:mobile)
  end
end