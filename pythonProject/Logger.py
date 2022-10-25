import logging


class Logger:
    @staticmethod
    def log(filename):
        logging.basicConfig(filename="log.txt", level=logging.DEBUG, format="%(asctime)s %(message)s")
        logging.debug('File ' + filename + ' was saved \n')
