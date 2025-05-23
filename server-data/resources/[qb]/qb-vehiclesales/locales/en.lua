local Translations = {
    error = {
        not_your_vehicle = 'Đây không phải là xe của bạn..',
        vehicle_does_not_exist = 'Xe không tồn tại',
        not_enough_money = 'Bạn không có đủ tiền',
        finish_payments = 'Bạn phải thanh toán hết chiếc xe này trước khi có thể bán nó..',
        no_space_on_lot = 'Không còn chỗ trống cho xe của bạn tại bãi!',
        not_in_veh = 'Bạn không đang ngồi trong xe!',
        not_for_sale = 'Chiếc xe này KHÔNG được rao bán!',
    },
    menu = {
        view_contract = 'Xem Hợp Đồng',
        view_contract_int = '[E] Xem Hợp Đồng',
        sell_vehicle = 'Bán Xe',
        sell_vehicle_help = 'Bán xe cho người chơi khác!',
        sell_back = 'Bán lại xe!',
        sell_back_help = 'Bán xe lại cho đại lý với giá thấp hơn!',
        interaction = '[E] Bán Xe',
    },
    success = {
        sold_car_for_price = 'Bạn đã bán xe với giá $%{value}',
        car_up_for_sale = 'Xe của bạn đã được rao bán! Giá - $%{value}',
        vehicle_bought = 'Đã mua xe thành công',
    },
    info = {
        confirm_cancel = '~g~Y~w~ - Xác nhận / ~r~N~w~ - Hủy ~g~',
        vehicle_returned = 'Xe của bạn đã được trả lại',
        used_vehicle_lot = 'Bãi Xe Đã Qua Sử Dụng',
        sell_vehicle_to_dealer = '[~g~E~w~] - Bán Xe Cho Đại Lý Với Giá ~g~$%{value}',
        view_contract = '[~g~E~w~] - Xem Hợp Đồng Xe',
        cancel_sale = '[~r~G~w~] - Hủy Bán Xe',
        model_price = '%{value}, Giá: ~g~$%{value2}',
        are_you_sure = 'Bạn có chắc không muốn bán xe nữa không?',
        yes_no = '[~g~7~w~] - Có | [~r~8~w~] - Không',
        place_vehicle_for_sale = '[~g~E~w~] - Đăng Bán Xe (Chủ Xe)',
    },
    charinfo = {
        firstname = 'chưa rõ',
        lastname = 'chưa rõ',
        account = 'Tài khoản chưa xác định..',
        phone = 'Số điện thoại chưa xác định..',
    },
    mail = {
        sender = 'Larrys Bán Xe RV',
        subject = 'Bạn đã bán một chiếc xe!',
        message = 'Bạn đã kiếm được $%{value} từ việc bán %{value2}.',
    }
}


Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
