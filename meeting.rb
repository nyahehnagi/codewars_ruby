def meeting(rooms, number)
  chairs_needed = number
  available_chairs_in_each_room = rooms.map { |room|
    room[1] - room[0].size >= 0 ? room[1] - room[0].size : 0
  }

  if chairs_needed == 0
    return "Game On"
  end

  if available_chairs_in_each_room.sum < chairs_needed
    return "Not enough!"
  end

  available_chairs_in_each_room.inject([]) do |chairs_used_from_rooms, spare_chairs_in_room|
    if chairs_used_from_rooms.sum < chairs_needed # we need more chairs
      chairs_used_from_rooms.sum + spare_chairs_in_room > chairs_needed ? chairs_used_from_rooms + [chairs_needed - chairs_used_from_rooms.sum] : chairs_used_from_rooms + [spare_chairs_in_room]
    else
      chairs_used_from_rooms
    end
  end
end
