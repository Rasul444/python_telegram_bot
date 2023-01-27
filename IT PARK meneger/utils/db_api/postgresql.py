# from typing import Union
# import asyncpg
# from asyncpg import Connection
# from asyncpg.pool import Pool
# from data import config
# from aiopg.sa import create_engine
# class Database:
#     def __init__(self):
#         self.engine = create_engine(user='aiopg',
#                       database='aiopg',
#                       host='127.0.0.1',
#                       password='passwd')
#
#     async def create(self):
#         self.engine = create_engine(user='aiopg',
#                       database='aiopg',
#                       host='127.0.0.1',
#                       password='passwd')
#
#     async def exucute(self, command, *args,
#                       fetch: bool = False,
#                       fetchval: bool = False,
#                       fetchrow: bool = False,
#                       execute: bool = False
#                       ):
#         async with self.engine.acquire() as connection:
#             await connection.execute(command, execute=execute)
#
#     async def create_table_users(self):
#         sql = """
#         CREATE TABLE IF NOT EXISTS Users (
#         id SERIAL PRIMARY KEY,
#         full_name VARCHAR(255) NOT NULL,
#         username varchar(255) NULL,
#         telegram_id BIGINT NOT NULL UNIQUE
#         );
#         """
#         await self.exucute(sql, execute=True)
#
#     @staticmethod
#     def format_args(sql, parametrs: dict):
#         sql += "AND".join([
#             f"{item} = ${num}" for num, item in enumerate(parametrs.keys(), start = 1)])
#         return sql, tuple(parametrs.values())
#
#     async def add_user(self, name,username,user_id):
#         sql = f'INSERT INTO emritc_users (name, username, user_id) VALUES({name},{username},{user_id}) returning *'
#         return await self.exucute(sql, name, username, user_id, fetchrow=True, execute=True)

# from typing import Union
#
# import asyncpg
# from asyncpg import Connection
# from asyncpg.pool import Pool
#
# from data import config
#
# class Database:
#
#     def __init__(self):
#         self.pool = Pool()
#
#     async def create(self):
#         self.pool = await asyncpg.create_pool(
#             user=config.DB_USER,
#             password=config.DB_PASS,
#             host=config.DB_HOST,
#             database=config.DB_NAME
#         )
#
#     async def execute(self, command, *args,
#                       fetch: bool = False,
#                       fetchval: bool = False,
#                       fetchrow: bool = False,
#                       execute: bool = False
#                       ):
#         async with self.pooll.acquire() as connection:
#             connection: Connection
#             async with connection.transaction():
#                 if fetch:
#                     result = await connection.fetch(command, *args)
#                 elif fetchval:
#                     result = await connection.fetchval(command, *args)
#                 elif fetchrow:
#                     result = await connection.fetchrow(command, *args)
#                 elif execute:
#                     result = await connection.execute(command, *args)
#             return result
#
#     # async def create_table_users(self):
#     #     sql = """
#     #     CREATE TABLE IF NOT EXISTS Users (
#     #     id SERIAL PRIMARY KEY,
#     #     full_name VARCHAR(255) NOT NULL,
#     #     username varchar(255) NULL,
#     #     telegram_id BIGINT NOT NULL UNIQUE
#     #     );
#     #     """
#     #     await self.execute(sql, execute=True)
#
#     @staticmethod
#     def format_args(sql, parameters: dict):
#         sql += " AND ".join([
#             f"{item} = ${num}" for num, item in enumerate(parameters.keys(),
#                                                           start=1)
#         ])
#         return sql, tuple(parameters.values())
#
#     async def add_user(self, name, username, user_id):
#         sql = "INSERT INTO emritc_users (name, username, user_id) VALUES($1, $2, $3) returning *"
#         return await self.execute(sql, name, username, user_id, fetchrow=True)
#
#     async def select_all_users(self):
#         sql = "SELECT * FROM Users"
#         return await self.execute(sql, fetch=True)
#
#     async def select_user(self, **kwargs):
#         sql = "SELECT * FROM Users WHERE "
#         sql, parameters = self.format_args(sql, parameters=kwargs)
#         return await self.execute(sql, *parameters, fetchrow=True)
#
#     async def count_users(self):
#         sql = "SELECT COUNT(*) FROM Users"
#         return await self.execute(sql, fetchval=True)
#
#     async def update_user_username(self, username, telegram_id):
#         sql = "UPDATE Users SET username=$1 WHERE telegram_id=$2"
#         return await self.execute(sql, username, telegram_id, execute=True)
#
#     async def delete_users(self):
#         await self.execute("DELETE FROM Users WHERE TRUE", execute=True)
#
#     async def drop_users(self):
#         await self.execute("DROP TABLE Users", execute=True)



import psycopg2

def send_ex(command):
    mydb = psycopg2.connect(user="postgres",
                            password="990380971@@",
                            host="127.0.0.1",
                            port="5432",
                            database="IT_PARK_manager")
    mycursor = mydb.cursor()

    mycursor.execute(command)
    res = mycursor.fetchall()
    mydb.commit()
    mycursor.close()
    mydb.close()
    return res