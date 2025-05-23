local Translations = {
    weather = {
        now_frozen = 'Thời tiết hiện tại đã bị đóng băng.',
        now_unfrozen = 'Thời tiết không còn bị đóng băng.',
        invalid_syntax = 'Cú pháp không hợp lệ, cú pháp đúng là: /weather <kiểu thời tiết>',
        invalid_syntaxc = 'Cú pháp không hợp lệ, hãy dùng /weather <kiểu thời tiết>!',
        updated = 'Thời tiết đã được cập nhật.',
        invalid = 'Kiểu thời tiết không hợp lệ, các kiểu hợp lệ là: \nEXTRASUNNY CLEAR NEUTRAL SMOG FOGGY OVERCAST CLOUDS CLEARING RAIN THUNDER SNOW BLIZZARD SNOWLIGHT XMAS HALLOWEEN',
        invalidc = 'Kiểu thời tiết không hợp lệ, các kiểu hợp lệ là: \nEXTRASUNNY CLEAR NEUTRAL SMOG FOGGY OVERCAST CLOUDS CLEARING RAIN THUNDER SNOW BLIZZARD SNOWLIGHT XMAS HALLOWEEN',
        willchangeto = 'Thời tiết sẽ chuyển thành: %{value}.',
        accessdenied = 'Bạn không có quyền sử dụng lệnh /weather.',
    },
    dynamic_weather = {
        disabled = 'Đã tắt thay đổi thời tiết động.',
        enabled = 'Đã bật thay đổi thời tiết động.',
    },
    time = {
        frozenc = 'Thời gian hiện tại đã bị đóng băng.',
        unfrozenc = 'Thời gian không còn bị đóng băng.',
        now_frozen = 'Thời gian hiện tại đã bị đóng băng.',
        now_unfrozen = 'Thời gian không còn bị đóng băng.',
        morning = 'Thời gian đã được đặt thành buổi sáng.',
        noon = 'Thời gian đã được đặt thành buổi trưa.',
        evening = 'Thời gian đã được đặt thành buổi tối.',
        night = 'Thời gian đã được đặt thành ban đêm.',
        change = 'Thời gian đã thay đổi thành %{value}:%{value2}.',
        changec = 'Thời gian đã được thay đổi thành: %{value}!',
        invalid = 'Cú pháp không hợp lệ, cú pháp đúng là: time <giờ> <phút>!',
        invalidc = 'Cú pháp không hợp lệ. Hãy dùng /time <giờ> <phút>!',
        access = 'Bạn không có quyền sử dụng lệnh /time.',
    },
    blackout = {
        enabled = 'Chế độ mất điện đã được bật.',
        enabledc = 'Chế độ mất điện đã được bật.',
        disabled = 'Chế độ mất điện đã được tắt.',
        disabledc = 'Chế độ mất điện đã được tắt.',
    },
    help = {
        weathercommand = 'Thay đổi thời tiết.',
        weathertype = 'kiểu thời tiết',
        availableweather = 'Các kiểu có sẵn: extrasunny, clear, neutral, smog, foggy, overcast, clouds, clearing, rain, thunder, snow, blizzard, snowlight, xmas & halloween',
        timecommand = 'Thay đổi thời gian.',
        timehname = 'giờ',
        timemname = 'phút',
        timeh = 'Một số trong khoảng từ 0 - 23',
        timem = 'Một số trong khoảng từ 0 - 59',
        freezecommand = 'Đóng băng / bỏ đóng băng thời gian.',
        freezeweathercommand = 'Bật/tắt thay đổi thời tiết động.',
        morningcommand = 'Đặt thời gian thành 09:00',
        nooncommand = 'Đặt thời gian thành 12:00',
        eveningcommand = 'Đặt thời gian thành 18:00',
        nightcommand = 'Đặt thời gian thành 23:00',
        blackoutcommand = 'Bật/tắt chế độ mất điện.',
    },
}


Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
