from aiogram.types import InlineKeyboardMarkup, InlineKeyboardButton

course_info = InlineKeyboardMarkup(
    inline_keyboard=[
        [
            InlineKeyboardButton(text="Kursga yozilish", callback_data="ky"),
            InlineKeyboardButton(text="Kurs haqida ma'lumot", callback_data="kh")
        ]

    ]

)
yes_no = InlineKeyboardMarkup(
    inline_keyboard=[
        [
            InlineKeyboardButton(text="ha", callback_data="yes"),
            InlineKeyboardButton(text="yo'q", callback_data="no")
        ],
    ],
)

course_info_ru = InlineKeyboardMarkup(
    inline_keyboard=[
        [
            InlineKeyboardButton(text="Записатся на курс", callback_data="ky_ru"),
            InlineKeyboardButton(text="Сведение о курсе", callback_data="kh_ru")
        ],

    ],

)

yes_no_ru = InlineKeyboardMarkup(
    inline_keyboard=[
        [
            InlineKeyboardButton(text="Да", callback_data="yes"),
            InlineKeyboardButton(text="Нет", callback_data="no")
        ],
    ],
)

