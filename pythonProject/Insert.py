from Connector import Connector
import json


class Insert:
    @staticmethod
    def Ins(roomsPath, studentsPath):
        connection = Connector.Con()
        with open(roomsPath, encoding='utf-8') as room_file:
            source = json.load(room_file)
            json_text = json.dumps(source)
            cursor = connection.cursor()
            cursor.execute('exec RoomsIns @json = ?', json_text)
            print('inserted')

        with open(studentsPath, encoding='utf-8') as students_file:
            source = json.load(students_file)
            json_text = json.dumps(source)
            cursor = connection.cursor()
            cursor.execute('exec StudentsIns @json = ?', json_text)
            print('inserted')
