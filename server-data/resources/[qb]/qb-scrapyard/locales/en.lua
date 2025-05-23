local Translations = {
    error = {
        smash_own = "Bạn không thể phá hủy phương tiện thuộc quyền sở hữu của mình.",
        cannot_scrap = "Phương tiện này không thể bị tháo dỡ.",
        not_driver = "Bạn không phải là người lái",
        demolish_vehicle = "Bạn không được phép tháo dỡ phương tiện lúc này",
        canceled = "Đã hủy",
    },
    text = {
        scrapyard = 'Bãi Phế Liệu',
        disassemble_vehicle = '[E] - Tháo Dỡ Phương Tiện',
        disassemble_vehicle_target = 'Tháo Dỡ Phương Tiện',
        email_list = "[E] - Gửi Danh Sách Xe Qua Email",
        email_list_target = "Gửi Danh Sách Xe Qua Email",
        demolish_vehicle = "Tháo Dỡ Phương Tiện",
    },
    email = {
        sender = "Xưởng Phế Liệu Turner",
        subject = "Danh Sách Phương Tiện",
        message = "Bạn chỉ được phép tháo dỡ một số lượng phương tiện nhất định.<br />Bạn có thể giữ mọi thứ mình tháo dỡ miễn là đừng làm phiền tôi.<br /><br /><strong>Danh sách phương tiện:</strong><br />",
    },
}


Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
