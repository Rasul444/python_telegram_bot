from aiogram.types import CallbackQuery, Message
from loader import dp, bot
from keyboards.inline.courses_and_info import course_info, yes_no, course_info_ru, yes_no_ru
from states.course_state import GrafikaState
from states.russean_state import GrafikaStateRu
from aiogram.dispatcher import FSMContext
from utils.db_api.postgresql import send_ex
from keyboards.inline.courses_inline_menu import courses_menu, courses_menu_ru
from keyboards.inline.dars_vaqti import dars_kuni, dars_soatlari, dars_kuni_ru
import re
r_phone = "^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$"

@dp.callback_query_handler(text="gd")
async def back_end(call: CallbackQuery):
    await call.message.answer("Siz Grafik Dizayn kursini tanladingiz\nEndi tanlang",reply_markup=course_info)
    await call.message.delete()
    await GrafikaState.button.set()

@dp.callback_query_handler(text="ky", state=GrafikaState.button)
async def rigester(call: CallbackQuery, state=FSMContext):
    await call.message.answer("Yaxshi, endi sizdan so'raladigan ma'lumotlarni bexato kriting")
    await call.message.answer("Endi Ism Familiyangizni yozib qoldiring?")
    await call.message.delete()
    await GrafikaState.next()

@dp.message_handler(state=GrafikaState.full_name)
async def entr_full_name(message: Message, state=FSMContext):
    full_name = message.text
    await state.update_data(
        {"full_name":full_name}
    )
    await message.answer("Endi telefon raqamingizni xatosiz yuboring")
    await GrafikaState.next()

@dp.message_handler(state=GrafikaState.phone)
async def entr_phone(message: Message, state=FSMContext):
    phone = message.text
    if re.search(r_phone, phone):

        await state.update_data(
            {"phone": phone}
        )
        await message.answer("O'zingizga maqul kunni tanlang", reply_markup=dars_kuni)
        await GrafikaState.next()
    else:
        await message.answer("Kchirasiz telfon raqamingizni to'g'ri kriting")

@dp.callback_query_handler(state=GrafikaState.days)
async def days(call: CallbackQuery, state=FSMContext):
    date = call.data
    await state.update_data(
        {"date":date}
    )
    await call.message.answer("O'zingizga qulay vaqtni tanlang", reply_markup=dars_soatlari)
    await call.message.delete()
    await GrafikaState.next()

@dp.callback_query_handler(state=GrafikaState.time)
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
                                                    f"kursi grafikdizayn")

    await call.message.answer("Malumotlaringiz qabul qilindi adminlarimiz sizga aloqaga chiqishadi")

    send_ex(f"""INSERT INTO grafik_dizayn (full_name, phone, date, time)
                                VALUES ('{f_name}','{phone}','{k_date}','{k_time}')
                                returning *""")
    await state.finish()


@dp.callback_query_handler(text="kh", state=GrafikaState.button)
async def backend(call: CallbackQuery, state = FSMContext):
    info = send_ex("select grafik_dizayn from subjects_info")
    await call.message.answer(info[0][0])
    await call.message.answer("Kursga ro'yxatdan o'tishni xoxlaysizmi",reply_markup=yes_no)

@dp.callback_query_handler(text="yes", state=GrafikaState.button)
async def choes(call: CallbackQuery, state = FSMContext):
    await call.message.answer("marxamat",reply_markup=course_info)
    await call.message.delete()

@dp.callback_query_handler(text="no", state=GrafikaState.button)
async def choes(call: CallbackQuery, state = FSMContext):
    await call.message.answer("Boshqa kurslarga tashrif buyurishingiz mumkin", reply_markup=courses_menu)
    await call.message.delete()
    await state.finish()


"""?????????????? ????????????"""



@dp.callback_query_handler(text="gd_ru")
async def kompsavodonligi(call: CallbackQuery):
    await call.message.answer("???? ?????????????? ???????? ???? ???????????????????????? ??????????????\n????????????????", reply_markup=course_info_ru)
    await call.message.delete()
    await GrafikaStateRu.button.set()


@dp.callback_query_handler(text="ky_ru", state=GrafikaStateRu.button)
async def rigester(call: CallbackQuery, state=FSMContext):
    await call.message.answer("??????????????, ???????????? ?????????????? ???????? ????????????")
    await call.message.answer("?????????????? ???????? <b>??????</b> ?? ??????????????<b></b>")
    await call.message.delete()
    await GrafikaStateRu.next()


@dp.message_handler(state=GrafikaStateRu.full_name)
async def entr_full_name(message: Message, state=FSMContext):
    full_name = message.text
    await state.update_data(
        {"full_name": full_name}
    )
    await message.answer("?????????????? ???????? ?????????? ????????????????")

    await GrafikaStateRu.next()


@dp.message_handler(state=GrafikaStateRu.phone)
async def entr_phone(message: Message, state=FSMContext):
    phone = message.text
    await state.update_data(
        {"phone": phone}
    )
    await message.answer("???????????????? ?????? ????????????", reply_markup=dars_kuni_ru)

    await GrafikaStateRu.next()


@dp.callback_query_handler(state=GrafikaStateRu.days)
async def days(call: CallbackQuery, state=FSMContext):
    date = call.data
    await state.update_data(
        {"date": date}
    )
    await call.message.answer("???????????????? ?????????? ?????????? ?????? ???????????? ???????????????? ????????", reply_markup=dars_soatlari)
    await call.message.delete()
    await GrafikaStateRu.next()


@dp.callback_query_handler(state=GrafikaStateRu.time)
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

    await bot.send_message(chat_id=5260472719, text=f"K??????????:\n"
                                                    f"?????? {f_name}\n"
                                                    f"?????????? ???????????????? {phone}\n"
                                                    f"kunlari {k_date}\n"
                                                    f"vaqti {k_time}\n"
                                                    f"kursi grafikdizayn")

    await call.message.answer("???????? ???????????? ??????????????, ?? ???????? ???????????????? ??????????????????????????")

    send_ex(f"""INSERT INTO grafik_dizayn (full_name, phone, date, time)
                                VALUES ('{f_name}','{phone}','{k_date}','{k_time}')
                                returning *""")
    await state.finish()


@dp.callback_query_handler(text="kh_ru", state=GrafikaStateRu.button)
async def kompsavodonligi(call: CallbackQuery, state=FSMContext):
    info = send_ex("select grafik_dizayn from subjects_info_ru")
    await call.message.answer(info[0][0])
    await call.message.answer("???????????? ???????????????????? ???? ?????????", reply_markup=yes_no_ru)


@dp.callback_query_handler(text="yes", state=GrafikaStateRu.button)
async def choes(call: CallbackQuery, state=FSMContext):
    await call.message.answer("?????????? ????????????????????", reply_markup=course_info_ru)


@dp.callback_query_handler(text="no", state=GrafikaStateRu.button)
async def choes(call: CallbackQuery, state=FSMContext):
    await call.message.answer("???? ???????????? ?????????????? ??????????:", reply_markup=courses_menu_ru)
    await call.message.delete()
    await state.finish()

