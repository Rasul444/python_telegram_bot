from aiogram.types import InlineKeyboardMarkup, InlineKeyboardButton

courses_menu = InlineKeyboardMarkup(
    inline_keyboard=[
        [
            InlineKeyboardButton(text="Kompyuter Savodxonligi", callback_data='ks'),
            InlineKeyboardButton(text="ROBOTOTEXNIKA",callback_data="robo")
        ],
        [
            InlineKeyboardButton(text="Backend Dasturlash", callback_data="bd"),
            InlineKeyboardButton(text="Frontend Dasturlash", callback_data="fd"),
        ],
        [
            InlineKeyboardButton(text="Mobil ilovalar yaratish", callback_data="miy"),
            InlineKeyboardButton(text="SMM marketing", callback_data="smm")
        ],
        [
            InlineKeyboardButton(text="grafik dizayin", callback_data="gd"),
            InlineKeyboardButton(text="3D dizayin", callback_data="3dd"),
        ],
        [
            InlineKeyboardButton(text="Vedio mantaj", callback_data="vm"),
            InlineKeyboardButton(text="Ingiliz tili", callback_data="it")
        ],
    ],
)

courses_menu_ru = InlineKeyboardMarkup(
    inline_keyboard=[
        [
            InlineKeyboardButton(text="Компютерная грамотность", callback_data='ks_ru'),
            InlineKeyboardButton(text="Робототехника",callback_data="robo_ru")
        ],
        [
            InlineKeyboardButton(text="Backend разработка", callback_data="bd_ru"),
            InlineKeyboardButton(text="Frontend разработка", callback_data="fd_ru"),
        ],
        [
            InlineKeyboardButton(text="Разрабокта под андроид", callback_data="miy_ru"),
            InlineKeyboardButton(text="SMM маркетинг", callback_data="smm_ru")
        ],
        [
            InlineKeyboardButton(text="Графический дизайн", callback_data="gd_ru"),
            InlineKeyboardButton(text="3D дизайн", callback_data="3dd_ru"),
        ],
        [
            InlineKeyboardButton(text="Видео монтаж", callback_data="vm_ru"),
            InlineKeyboardButton(text="Англиский язык", callback_data="it_ru")
        ],
    ],
)