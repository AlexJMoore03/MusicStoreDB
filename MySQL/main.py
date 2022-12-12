from pymysql import*
import xlwt
import pandas.io.sql as sql
import cryptography
import openpyxl

connection = connect(user="****", password="****", host="localhost", database="musicstoredb")

data = sql.read_sql('SELECT * FROM instrument', connection)

print(data)

data.to_excel('C:/Users/alex/Desktop/Projects/MusicStoreDB/Oracle/instrumentData.xlsx')