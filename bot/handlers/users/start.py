from aiogram import types
from aiogram.dispatcher.filters.builtin import CommandStart
from keyboards.default.menuStart import menu
from utils.db_api.postgresql import send_ex

from loader import dp


@dp.message_handler(CommandStart())
async def bot_start(message: types.Message):
    name = message.from_user.full_name
    user_name = message.from_user.username
    user_id = message.from_user.id

    try:
        user = send_ex(f"""INSERT INTO bot_users (name, username, user_id) 
                           VALUES ('{message.from_user.full_name}','@{message.from_user.username}',{message.from_user.id}) 
                           returning *""")
        await message.answer(
            f"Assalomu alaykum {message.from_user.full_name} <b>Murojat </b> botga xush kelibsiz!\n")




    except:
        await message.reply(f"Assalomu alaykum {message.from_user.full_name} bizning bazamizda borsiz\n")



@dp.message_handler(commands='all_users')
async def get_all_users(message: types.Message):
    users = send_ex("""select * from bot_users""")
    for i in users:

        print(i)




