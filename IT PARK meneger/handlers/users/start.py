from aiogram import types
from aiogram.dispatcher.filters.builtin import CommandStart
from loader import dp
from utils.db_api.postgresql import send_ex
from keyboards.default.language_keybords import language


@dp.message_handler(CommandStart())
async def bot_start(message: types.Message):
    try:
        user = send_ex(f"""INSERT INTO db_users_students (full_name, username, user_id) 
                        VALUES ('{message.from_user.full_name}','@{message.from_user.username}',{message.from_user.id}) 
                        returning *""")
        await message.answer(
            f"Assalomu alaykum {message.from_user.full_name} <b>IT PARK manager </b> botga xush kelibsiz!\n"
            f"Здравствуйте {message.from_user.full_name} <b>IT PARK manager</b> добро пожаловать в бота!")
        await message.answer("Tilni tanlang\n"
                             "Выберите язык", reply_markup=language)


    except:
        await message.reply(f"Assalomu alaykum {message.from_user.full_name} bizning bazamizda borsiz\n"
                            f"Здравствуйте {message.from_user.full_name} вы в нашей базе")
        await message.answer("Tilni tanlang\n"
                             "Выберите язык", reply_markup=language)
