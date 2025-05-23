local Translations = {
    error = {
        canceled = 'Đã hủy',
        max_ammo = 'Đã đạt giới hạn đạn',
        no_weapon = 'Bạn không có vũ khí.',
        wrong_ammo = 'Loại đạn không phù hợp.',
        no_support_attachment = 'Vũ khí này không hỗ trợ phụ kiện này.',
        no_weapon_in_hand = 'Bạn không cầm vũ khí nào.',
        weapon_broken = 'Vũ khí này đã hỏng và không thể sử dụng.',
        no_damage_on_weapon = 'Vũ khí này không bị hư hại.',
        weapon_broken_need_repair = 'Vũ khí của bạn đã hỏng, cần sửa chữa trước khi sử dụng lại.',
        attachment_already_on_weapon = 'Bạn đã gắn %{value} lên vũ khí rồi.'
    },
    success = {
        reloaded = 'Đã nạp đạn'
    },
    info = {
        loading_bullets = 'Đang nạp đạn',
        repairshop_not_usable = 'Hiện tại xưởng sửa chữa ~r~KHÔNG~w~ sử dụng được.',
        weapon_will_repair = 'Vũ khí của bạn sẽ được sửa.',
        take_weapon_back = '[E] - Nhận lại vũ khí',
        repair_weapon_price = '[E] Sửa vũ khí, ~g~$%{value}~w~',
        removed_attachment = 'Bạn đã gỡ %{value} khỏi vũ khí!',
        hp_of_weapon = 'Độ bền của vũ khí'
    },
    mail = {
        sender = 'Tyrone',
        subject = 'Sửa chữa',
        message = 'Vũ khí %{value} của bạn đã được sửa, bạn có thể đến lấy tại địa điểm đã chỉ định. <br><br> Thân ái chào tạm biệt, madafaka'
    },
}


Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
