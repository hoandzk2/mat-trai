local Translations = {
    error = {
        finish_work = "Hãy hoàn thành hết công việc của bạn trước đã",
        vehicle_not_correct = "Đây không phải là chiếc xe đúng yêu cầu",
        failed = "Bạn đã thất bại",
        not_towing_vehicle = "Bạn phải đang ở trong xe kéo",
        too_far_away = "Bạn đang ở quá xa",
        no_work_done = "Bạn chưa làm bất kỳ công việc nào",
        no_deposit = "Cần đặt cọc $%{value}",
    },
    success = {
        paid_with_cash = "Đã đặt cọc $%{value} bằng tiền mặt",
        paid_with_bank = "Đã đặt cọc $%{value} từ ngân hàng",
        refund_to_cash = "Đã hoàn lại $%{value} bằng tiền mặt",
        you_earned = "Bạn đã kiếm được $%{value}",
    },
    menu = {
        header = "Xe Tải Có Sẵn",
        close_menu = "⬅ Đóng Menu",
    },
    mission = {
        delivered_vehicle = "Bạn đã giao một chiếc xe",
        get_new_vehicle = "Bạn có thể nhận xe mới",
        towing_vehicle = "Đang kéo xe...",
        goto_depot = "Đưa xe đến bãi Hayes",
        vehicle_towed = "Xe đã được kéo",
        untowing_vehicle = "Đang tháo xe",
        vehicle_takenoff = "Xe đã được tháo xuống",
    },
    info = {
        tow = "Đặt một chiếc xe lên thùng xe kéo",
        toggle_npc = "Bật/tắt công việc NPC",
        skick = "Phát hiện hành vi gian lận",
    },
    label = {
        payslip = "Phiếu lương",
        vehicle = "Xe",
        npcz = "Khu vực NPC",
    }
}


Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
