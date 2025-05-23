local Translations = {
    error = {
        minimum_store_robbery_police = "Không đủ cảnh sát (Cần %{MinimumStoreRobberyPolice})",
        not_driver = "Bạn không phải là người lái xe",
        demolish_vehicle = "Hiện tại bạn không được phép phá hủy phương tiện",
        process_canceled = "Quá trình đã bị hủy..",
        you_broke_the_lock_pick = "Bạn đã làm gãy dụng cụ mở khóa",
    },
    text = {
        the_cash_register_is_empty = "Ngăn kéo tiền rỗng",
        try_combination = "~g~E~w~ - Thử mã kết hợp",
        safe_opened = "Két sắt đã mở",
        emptying_the_register = "Đang lấy tiền từ ngăn kéo..",
        safe_code = "Mã két sắt: "
    },
    email = {
        shop_robbery = "10-31 | Cướp Cửa Hàng",
        someone_is_trying_to_rob_a_store = "Ai đó đang cố gắng cướp một cửa hàng tại %{street} (CAMERA ID: %{cameraId1})",
        storerobbery_progress = "Cướp cửa hàng đang diễn ra"
    },
}


Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
