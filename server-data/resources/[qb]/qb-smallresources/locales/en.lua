local Translations = {
    afk = {
        will_kick = 'Bạn đang AFK và sẽ bị đá khỏi máy chủ trong ',
        time_seconds = ' giây!',
        time_minutes = ' phút!',
        kick_message = 'Bạn đã bị đá vì AFK quá lâu'
    },
    wash = {
        in_progress = "Đang rửa xe...",
        wash_vehicle = "[E] Rửa xe",
        wash_vehicle_target = "Rửa xe",
        dirty = "Xe không bị bẩn",
        cancel = "Đã hủy rửa xe..."
    },
    consumables = {
        eat_progress = "Đang ăn...",
        drink_progress = "Đang uống...",
        liqour_progress = "Đang uống rượu...",
        coke_progress = "Hít nhanh một phát...",
        crack_progress = "Đang hút crack...",
        ecstasy_progress = "Uống thuốc lắc...",
        healing_progress = "Đang hồi máu",
        meth_progress = "Đang hút meth...",
        joint_progress = "Đang châm điếu cỏ...",
        use_parachute_progress = "Đang đeo dù...",
        pack_parachute_progress = "Đang gấp dù...",
        no_parachute = "Bạn không có dù!",
        armor_full = "Bạn đã mặc áo giáp rồi!",
        armor_empty = "Bạn chưa mặc áo giáp...",
        armor_progress = "Đang mặc áo giáp...",
        heavy_armor_progress = "Đang mặc áo giáp nặng...",
        remove_armor_progress = "Đang tháo áo giáp...",
        canceled = "Đã hủy..."
    },
    cruise = {
        unavailable = "Không thể kích hoạt kiểm soát hành trình",
        activated = "Đã bật kiểm soát hành trình",
        deactivated = "Đã tắt kiểm soát hành trình"
    },
    editor = {
        started = "Bắt đầu ghi hình!",
        save = "Đã lưu bản ghi!",
        delete = "Đã xóa bản ghi!",
        editor = "Tạm biệt nhé!"
    },
    firework = {
        place_progress = "Đang đặt pháo hoa...",
        canceled = "Đã hủy...",
        time_left = "Pháo hoa sẽ bắn trong ~r~"
    },
    seatbelt = {
        use_harness_progress = "Đang thắt dây an toàn đua",
        remove_harness_progress = "Đang tháo dây an toàn đua",
        no_car = "Bạn không ở trong xe."
    },
    teleport = {
        teleport_default = 'Sử dụng thang máy'
    },
    pushcar = {
        stop_push = "[E] Ngừng đẩy xe"
    }
}


Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})