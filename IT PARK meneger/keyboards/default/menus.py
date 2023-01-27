from aiogram.types import ReplyKeyboardMarkup, KeyboardButton

main_menu = ReplyKeyboardMarkup(
    keyboard=[
        [
            KeyboardButton(text="Boshlang'ich kurslar"),
            KeyboardButton(text="Labaratoriya kurslari")
        ],
    ],
    resize_keyboard=True
)

main_menu_ru = ReplyKeyboardMarkup(
    keyboard=[
        [
            KeyboardButton(text="Начальные курсы"),
            KeyboardButton(text="Лабараторные курсы")
        ],
    ],
    resize_keyboard=True
)