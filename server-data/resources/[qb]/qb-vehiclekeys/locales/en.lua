local Translations = {
    notify = {
        ydhk = 'Bạn không có chìa khóa của xe này.',
        nonear = 'Không có ai gần đó để đưa chìa khóa.',
        vlock = 'Xe đã được khóa!',
        vunlock = 'Xe đã được mở khóa!',
        vlockpick = 'Bạn đã mở khóa cửa xe thành công!',
        fvlockpick = 'Bạn không tìm thấy chìa khóa và cảm thấy bực bội.',
        vgkeys = 'Bạn đã đưa chìa khóa.',
        vgetkeys = 'Bạn đã nhận được chìa khóa xe!',
        fpid = 'Vui lòng nhập ID người chơi và biển số xe.',
        cjackfail = 'Cướp xe thất bại!',
        vehclose = 'Không có xe nào gần bạn!',
    },
    progress = {
        takekeys = 'Đang lấy chìa khóa từ thi thể...',
        hskeys = 'Đang tìm chìa khóa xe...',
        acjack = 'Đang cố gắng cướp xe...',
    },
    info = {
        skeys = '~g~[H]~w~ - Tìm chìa khóa',
        tlock = 'Bật/Tắt khóa xe',
        palert = 'Đang có vụ trộm xe. Loại: ',
        engine = 'Bật/Tắt động cơ',
    },
    addcom = {
        givekeys = 'Đưa chìa khóa cho ai đó. Nếu không có ID, sẽ đưa cho người gần nhất hoặc tất cả trong xe.',
        givekeys_id = 'id',
        givekeys_id_help = 'ID người chơi',
        addkeys = 'Thêm chìa khóa xe cho người chơi.',
        addkeys_id = 'id',
        addkeys_id_help = 'ID người chơi',
        addkeys_plate = 'biển số',
        addkeys_plate_help = 'Biển số xe',
        rkeys = 'Xóa chìa khóa xe của người chơi.',
        rkeys_id = 'id',
        rkeys_id_help = 'ID người chơi',
        rkeys_plate = 'biển số',
        rkeys_plate_help = 'Biển số xe',
    }
}


Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
