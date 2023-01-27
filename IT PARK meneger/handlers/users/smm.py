from aiogram.types import CallbackQuery, Message
from loader import dp, bot
from keyboards.inline.courses_and_info import course_info, yes_no, course_info_ru, yes_no_ru
import re
r_phone = "^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$"

from states.russean_state import SmmStateRu
from states.course_state import SmmState
from aiogram.dispatcher import FSMContext
from utils.db_api.postgresql import send_ex
from keyboards.inline.courses_inline_menu import courses_menu, courses_menu_ru
from keyboards.inline.dars_vaqti import dars_kuni, dars_soatlari, dars_kuni_ru

@dp.callback_query_handler(text="smm")
async def back_end(call: CallbackQuery):
    await call.message.answer("Siz SMM kursini tanladingiz\nEndi tanlang",reply_markup=course_info)
    await call.message.delete()
    await SmmState.button.set()

@dp.callback_query_handler(text="ky", state=SmmState.button)
async def rigester(call: CallbackQuery, state=FSMContext):
    await call.message.answer("Yaxshi, endi sizdan so'raladigan ma'lumotlarni bexato kriting")
    await call.message.answer("Endi Ism Familiyangizni yozib qoldiring?")
    await call.message.delete()
    await SmmState.next()

@dp.message_handler(state=SmmState.full_name)
async def entr_full_name(message: Message, state=FSMContext):
    full_name = message.text
    await state.update_data(
        {"full_name":full_name}
    )
    await message.answer("Endi telefon raqamingizni xatosiz yuboring")
    await SmmState.next()

@dp.message_handler(state=SmmState.phone)
async def entr_phone(message: Message, state=FSMContext):
    phone = message.text
    if re.search(r_phone, phone):

        await state.update_data(
            {"phone": phone}
        )
        await message.answer("O'zingizga maqul kunni tanlang", reply_markup=dars_kuni)
        await SmmState.next()
    else:
        await message.answer("Kchirasiz telfon raqamingizni to'g'ri kriting")

@dp.callback_query_handler(state=SmmState.days)
async def days(call: CallbackQuery, state=FSMContext):
    date = call.data
    await state.update_data(
        {"date":date}
    )
    await call.message.answer("O'zingizga qulay vaqtni tanlang", reply_markup=dars_soatlari)
    await call.message.delete()
    await SmmState.next()

@dp.callback_query_handler(state=SmmState.time)
async def times(call: CallbackQuery, state = FSMContext):
    time = call.data
    await state.update_data(
        {"time":time}
    )
    await call.message.delete()


    data = await state.get_data()
    f_name = data.get("full_name")
    phone = data.get("phone")
    k_date = data.get("date")
    k_time = data.get("time")

    await bot.send_message(chat_id=5260472719, text=f"Klent\n"
                                                    f"Ismi {f_name}\n"
                                                    f"telefon raqami {phone}\n"
                                                    f"kunlari {k_date}\n"
                                                    f"vaqti {k_time}\n"
                                                    f"kursi smm")

    await call.message.answer("Malumotlaringiz qabul qilindi adminlarimiz sizga aloqaga chiqishadi")

    send_ex(f"""INSERT INTO smm (full_name, phone, date, time)
                                VALUES ('{f_name}','{phone}','{k_date}','{k_time}')
                                returning *""")
    await state.finish()


@dp.callback_query_handler(text="kh", state=SmmState.button)
async def backend(call: CallbackQuery, state = FSMContext):
    info = send_ex("select smm from subjects_info")
    await call.message.answer(info[0][0])
    await call.message.answer("Kursga ro'yxatdan o'tishni xoxlaysizmi",reply_markup=yes_no)

@dp.callback_query_handler(text="yes", state=SmmState.button)
async def choes(call: CallbackQuery, state = FSMContext):
    await call.message.answer("marxamat",reply_markup=course_info)
    await call.message.delete()

@dp.callback_query_handler(text="no", state=SmmState.button)
async def choes(call: CallbackQuery, state = FSMContext):
    await call.message.answer("Boshqa kurslarga tashrif buyurishingiz mumkin", reply_markup=courses_menu)
    await call.message.delete()
    await state.finish()


"""Русская версия"""



@dp.callback_query_handler(text="smm_ru")
async def kompsavodonligi(call: CallbackQuery):
    await call.message.answer("Вы выбрали курс Маркетинг в области СМИ\nВыберите", reply_markup=course_info_ru)
    await call.message.delete()
    await SmmStateRu.button.set()


@dp.callback_query_handler(text="ky_ru", state=SmmStateRu.button)
async def rigester(call: CallbackQuery, state=FSMContext):
    await call.message.answer("Отлично, теперь введите свои данные")
    await call.message.answer("Введите свое <b>Имя</b> и Фамилию<b></b>")
    await call.message.delete()
    await SmmStateRu.next()


@dp.message_handler(state=SmmStateRu.full_name)
async def entr_full_name(message: Message, state=FSMContext):
    full_name = message.text
    await state.update_data(
        {"full_name": full_name}
    )
    await message.answer("Введите свой номер телефона")

    await SmmStateRu.next()


@dp.message_handler(state=SmmStateRu.phone)
async def entr_phone(message: Message, state=FSMContext):
    phone = message.text
    await state.update_data(
        {"phone": phone}
    )
    await message.answer("Выберите дни недели", reply_markup=dars_kuni_ru)

    await SmmStateRu.next()


@dp.callback_query_handler(state=SmmStateRu.days)
async def days(call: CallbackQuery, state=FSMContext):
    date = call.data
    await state.update_data(
        {"date": date}
    )
    await call.message.answer("Выберите время когда вам удобно посещать курс", reply_markup=dars_soatlari)
    await call.message.delete()
    await SmmStateRu.next()


@dp.callback_query_handler(state=SmmStateRu.time)
async def times(call: CallbackQuery, state=FSMContext):
    time = call.data
    await state.update_data(
        {"time": time}
    )

    data = await state.get_data()
    f_name = data.get("full_name")
    phone = data.get("phone")
    k_date = data.get("date")
    k_time = data.get("time")

    await bot.send_message(chat_id=5260472719, text=f"Kлиент:\n"
                                                    f"Имя {f_name}\n"
                                                    f"Номер телефона {phone}\n"
                                                    f"kunlari {k_date}\n"
                                                    f"vaqti {k_time}\n"
                                                    f"kursi smm")

    await call.message.answer("Вашы данные приняты, с вами свяжется администрация")

    send_ex(f"""INSERT INTO smm (full_name, phone, date, time)
                                VALUES ('{f_name}','{phone}','{k_date}','{k_time}')
                                returning *""")
    await state.finish()


@dp.callback_query_handler(text="kh_ru", state=SmmStateRu.button)
async def kompsavodonligi(call: CallbackQuery, state=FSMContext):
    info = send_ex("select smm from subjects_info_ru")
    await call.message.answer(info[0][0])
    await call.message.answer("Хотите записаться на курс?", reply_markup=yes_no_ru)


@dp.callback_query_handler(text="yes", state=SmmStateRu.button)
async def choes(call: CallbackQuery, state=FSMContext):
    await call.message.answer("Добро пожаловать", reply_markup=course_info_ru)


@dp.callback_query_handler(text="no", state=SmmStateRu.button)
async def choes(call: CallbackQuery, state=FSMContext):
    await call.message.answer("Вы можете выбрать курсы:", reply_markup=courses_menu_ru)
    await call.message.delete()
    await state.finish()

