import pyodbc
import json


class Connector:
    @staticmethod
    def Con():
        with open('config.json', 'r') as file:
            config = json.load(file)

        driver = config['driver']
        server = config['server']
        database = config['database']

        connection = pyodbc.connect(
            f'Driver={driver};'
            f'Server={server};'
            f'Database={database};'
        )
        return connection
