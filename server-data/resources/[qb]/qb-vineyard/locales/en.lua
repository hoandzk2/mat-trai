local Translations = {
    error = {
        ["invalid_job"] = "Tôi không nghĩ mình làm việc ở đây... ",
        ["invalid_items"] = "Bạn không có đủ vật phẩm cần thiết!",
        ["no_items"] = "Bạn không có vật phẩm nào!",
    },
    progress = {
        ["pick_grapes"] = "Đang hái nho ..",
        ["process_grapes"] = "Đang chế biến nho ..",
    },
    task = {
        ["start_task"] = "[E] Bắt đầu",
        ["load_ingrediants"] = "[E] Tải nguyên liệu",
        ["wine_process"] = "[E] Bắt đầu chế biến rượu",
        ["get_wine"] = "[E] Lấy rượu vang",
        ["make_grape_juice"] = "[E] Làm nước nho",
        ["countdown"] = "Thời gian còn lại %{time}s",
        ["cancel_task"] = "Bạn đã hủy nhiệm vụ",
    },
    text = {
        ["start_shift"] = "Bạn đã bắt đầu ca làm tại vườn nho!",
        ["end_shift"] = "Bạn đã kết thúc ca làm tại vườn nho!",
        ["valid_zone"] = "Khu vực hợp lệ!",
        ["invalid_zone"] = "Khu vực không hợp lệ!",
        ["zone_entered"] = "Đã vào khu vực %{zone}",
        ["zone_exited"] = "Đã rời khỏi khu vực %{zone}",
    }
}


Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
