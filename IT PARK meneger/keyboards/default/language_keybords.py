from aiogram.types import ReplyKeyboardMarkup,KeyboardButton

language = ReplyKeyboardMarkup(
    keyboard= [
        [
            KeyboardButton(text="UZ"),
            KeyboardButton(text="RU")
        ],
    ],
    resize_keyboard=True
)