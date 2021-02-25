RT1 = RoomType.where(name: "NORMAL").first_or_create
RT2 = RoomType.where(name: "PREMIUM").first_or_create

Room.where(number: "100", room_type_id: RT1.id, status: false).first_or_create
Room.where(number: "101", room_type_id: RT1.id, status: false).first_or_create
Room.where(number: "102", room_type_id: RT1.id, status: false).first_or_create
Room.where(number: "103", room_type_id: RT1.id, status: false).first_or_create
Room.where(number: "104", room_type_id: RT1.id, status: false).first_or_create
Room.where(number: "105", room_type_id: RT1.id, status: false).first_or_create
Room.where(number: "106", room_type_id: RT1.id, status: false).first_or_create
Room.where(number: "107", room_type_id: RT1.id, status: false).first_or_create
Room.where(number: "108", room_type_id: RT1.id, status: false).first_or_create
Room.where(number: "109", room_type_id: RT1.id, status: false).first_or_create
Room.where(number: "110", room_type_id: RT1.id, status: false).first_or_create
Room.where(number: "200", room_type_id: RT2.id, status: false).first_or_create
Room.where(number: "201", room_type_id: RT2.id, status: false).first_or_create
Room.where(number: "202", room_type_id: RT2.id, status: false).first_or_create
Room.where(number: "203", room_type_id: RT2.id, status: false).first_or_create
Room.where(number: "204", room_type_id: RT2.id, status: false).first_or_create
Room.where(number: "205", room_type_id: RT2.id, status: false).first_or_create
Room.where(number: "206", room_type_id: RT2.id, status: false).first_or_create
Room.where(number: "207", room_type_id: RT2.id, status: false).first_or_create
Room.where(number: "208", room_type_id: RT2.id, status: false).first_or_create
Room.where(number: "209", room_type_id: RT2.id, status: false).first_or_create
Room.where(number: "210", room_type_id: RT2.id, status: false).first_or_create