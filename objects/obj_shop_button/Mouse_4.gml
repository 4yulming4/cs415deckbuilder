if (room == Room_shop) {
    room_goto(Level);
} else {
    Level = room;
    room_goto(Room_shop);
}