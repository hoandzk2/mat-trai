local Translations = {
    info = {
        open_shop = '[E] Cửa hàng',
        deliver_e = '~g~E~w~ - Giao hàng',
        deliver = 'Giao hàng',
    },
    error = {
        missing_license = 'Thiếu giấy phép %s cho một số sản phẩm',
        no_deposit = 'Cần đặt cọc $%{value}',
        cancelled = 'Đã hủy',
        vehicle_not_correct = 'Đây không phải là xe thương mại!',
        no_driver = 'Bạn phải là người lái để thực hiện việc này..',
        no_work_done = 'Bạn chưa làm việc gì cả..',
        backdoors_not_open = 'Cửa sau của xe chưa được mở',
        get_out_vehicle = 'Bạn cần ra khỏi xe để thực hiện hành động này',
        too_far_from_trunk = 'Bạn cần lấy thùng hàng từ cốp xe của mình',
        too_far_from_delivery = 'Bạn cần đến gần điểm giao hàng hơn'
    },
    success = {
        dealer_verify = 'Người bán đã xác minh giấy phép của bạn',
        paid_with_cash = 'Đã đặt cọc $%{value} bằng tiền mặt',
        paid_with_bank = 'Đã đặt cọc $%{value} từ tài khoản ngân hàng',
        refund_to_cash = 'Hoàn lại $%{value} tiền mặt từ tiền cọc',
        you_earned = 'Bạn đã kiếm được $%{value}',
        payslip_time = 'Bạn đã đến tất cả các cửa hàng .. Đã đến lúc nhận lương!',
    },
    mission = {
        store_reached = 'Đã đến cửa hàng, lấy một thùng hàng trong cốp xe bằng [E] và giao tới điểm đánh dấu',
        take_box = 'Lấy một thùng sản phẩm',
        deliver_box = 'Giao thùng sản phẩm',
        another_box = 'Lấy thêm một thùng sản phẩm',
        goto_next_point = 'Bạn đã giao xong, đến điểm tiếp theo',
        return_to_station = 'Đã giao tất cả sản phẩm, quay về trạm',
        job_completed = 'Bạn đã hoàn thành tuyến đường'
    },
}


Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
