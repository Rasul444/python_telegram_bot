from aiogram import types
from loader import dp
from keyboards.default.menus import main_menu, main_menu_ru
from keyboards.inline.courses_inline_menu import courses_menu, courses_menu_ru
from aiogram.types import ReplyKeyboardRemove

@dp.message_handler(text="UZ")
async def lang(message: types.Message):
    await message.answer("Siz o'zbek tilini tanladingiz\nMarxamat kursni tanlang",reply_markup=main_menu)

@dp.message_handler(text="Boshlang'ich kurslar")
async def basic_courses(message: types.Message):
    await message.answer("🆗 Marxamat tanlang", reply_markup=courses_menu)
    # await message.answer("yana /start", reply_markup=ReplyKeyboardRemove())

@dp.message_handler(text="Labaratoriya kurslari")
async def basic_courses(message: types.Message):
    await message.answer("Kechirasiz hozircha bizda labaratoriya kurslari shakillantirilmadi,\nTez orada kurs ochilishini kuring")


@dp.message_handler(text="RU")
async def lang(message: types.Message):
    await message.answer("Вы выбрали русский язык\nВыбирайте курс",reply_markup=main_menu_ru)

@dp.message_handler(text="Начальные курсы")
async def basic_courses(message: types.Message):
    await message.answer("🆗 Наши курсы: ", reply_markup=courses_menu_ru)

@dp.message_handler(text="Лабараторные курсы")
async def basic_courses(message: types.Message):
    await message.answer("Извините, у нас пока нет лабораторных курсов")


