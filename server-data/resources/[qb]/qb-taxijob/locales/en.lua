local Translations = {
    error = {
        ['already_mission'] = 'Bạn đang thực hiện một nhiệm vụ NPC rồi',
        ['not_in_taxi'] = 'Bạn không đang ở trong xe taxi',
        ['missing_meter'] = 'Chiếc xe này không có đồng hồ tính cước',
        ['no_vehicle'] = 'Bạn không đang ở trong xe',
        ['not_active_meter'] = 'Đồng hồ tính cước chưa được kích hoạt',
        ['ride_canceled'] = 'Bạn đã va chạm quá nhiều, chuyến đi bị hủy!',
        ['broken_taxi'] = 'Taxi của bạn cần sửa chữa trước khi tiếp tục làm việc!',
        ['crash_warning'] = 'Nếu bạn va chạm thêm %d lần nữa, khách sẽ hủy chuyến đi và bạn sẽ không được trả tiền!',
        ['time'] = 'lần',
        ['times'] = 'lần',
    },
    success = {
        ['mission_cancelled'] = 'Đã hủy nhiệm vụ thành công',
    },
    info = {
        ['person_was_dropped_off'] = 'Đã thả khách xuống!',
        ['npc_on_gps'] = 'Vị trí NPC đã được đánh dấu trên GPS',
        ['go_to_location'] = 'Đưa NPC đến địa điểm đã chỉ định',
        ['vehicle_parking'] = '[E] Đậu Xe',
        ['job_vehicles'] = '[E] Xe Công Việc',
        ['drop_off_npc'] = '[E] Thả NPC Xuống',
        ['call_npc'] = '[E] Gọi NPC',
        ['blip_name'] = 'Taxi Trung Tâm',
        ['taxi_label_1'] = 'Taxi Thường',
        ['no_spawn_point'] = 'Không tìm thấy vị trí để gọi xe taxi',
        ['taxi_returned'] = 'Đã đậu xe taxi',
        ['on_duty'] = '[E] - Bắt đầu ca làm',
        ['off_duty'] = '[E] - Kết thúc ca làm',
        ['tip_received'] = 'Bạn đã được thưởng $%d vì lái xe an toàn',
        ['tip_not_received'] = 'Hạn chế va chạm nếu bạn muốn được thưởng tiền tip lần sau',
    },
    menu = {
        ['taxi_menu_header'] = 'Danh Sách Xe Taxi',
        ['close_menu'] = '⬅ Đóng Menu',
        ['boss_menu'] = 'Menu Quản Lý'
    }
}


Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
