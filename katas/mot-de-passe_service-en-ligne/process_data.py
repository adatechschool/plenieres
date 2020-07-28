import hashlib
import csv
from passlib.hash import argon2

def data_process(name, password):
    h = argon2.hash(password)

    with open("password.csv", "a") as file:
        writer = csv.writer(file, delimiter=',')
        writer.writerow([name, h])
    return

data_process("Nicola", "odnaondzvaonvan")
