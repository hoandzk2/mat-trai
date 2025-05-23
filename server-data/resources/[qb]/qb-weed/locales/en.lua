local Translations = {
    error = {
        process_canceled = "Quy trình đã bị hủy",
        plant_has_died = "Cây đã chết. Nhấn ~r~ E ~w~ để loại bỏ cây.",
        cant_place_here = "Không thể đặt ở đây",
        not_safe_here = "Chỗ này không an toàn, hãy thử trong nhà của bạn",
        not_need_nutrition = "Cây không cần dinh dưỡng",
        this_plant_no_longer_exists = "Cây này không còn tồn tại?",
        house_not_found = "Không tìm thấy nhà",
        you_dont_have_enough_resealable_bags = "Bạn không có đủ túi có thể đóng lại",
    },
    text = {
        sort = "Sắp xếp:",
        harvest_plant = "Nhấn ~g~ E ~w~ để thu hoạch cây.",
        nutrition = "Dinh dưỡng:",
        health = "Sức khỏe:",
        progress = "Tiến trình:",
        harvesting_plant = "Đang thu hoạch cây",
        planting = "Đang trồng cây",
        feeding_plant = "Đang cho cây ăn",
        the_plant_has_been_harvested = "Cây đã được thu hoạch",
        removing_the_plant = "Đang loại bỏ cây",
        stage = "Giai đoạn hiện tại:",
        highestStage = "Giai đoạn thu hoạch:",
    },
}


Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
