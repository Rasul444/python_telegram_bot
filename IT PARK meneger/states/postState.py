from aiogram.dispatcher.filters.state import State, StatesGroup


class PostsState(StatesGroup):
    photo = State()
    comment = State()
