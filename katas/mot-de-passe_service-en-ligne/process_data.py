import hashlib
import csv

def data_process(name, password):
    h = hashlib.sha512()
    password = bytes(str(password), "utf-8")
    h.update(password)
    with open("password.csv", "a") as file:
        writer = csv.writer(file, delimiter=',')
        writer.writerow([name, h.hexdigest()])
    return

data_process("Nicola", "odnaondzvaonvan")
