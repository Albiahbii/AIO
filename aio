#!/usr/bin/env python

import json
import os
import time
import requests
import random
from time import sleep
from datetime import date


os.system("clear")
def tyty():
    for char in type:
        r1 = random.uniform(0.05, 0.09)
        sleep(r1)
        print(char, end='', flush=True)


type = f'Welcome to Ibhax-Tools'
tyty()

def advice():
    url = "https://api.adviceslip.com/advice"
    response = requests.request("GET", url)
    data = response.json()['slip']['advice']
    print(data)
    print("\n")

def bored():
    url = "https://www.boredapi.com/api/activity"
    response = requests.request("GET", url)
    data = response.json()['activity']
    print(data)
    print("\n")

def history():
    current_time = date.today()
    month = current_time.month
    day = current_time.day
    url = "https://byabbe.se/on-this-day/%s/%s/events.json" % (month, day)
    response = requests.request("GET", url)
    data = response.json()['events']
    for event in data:
        year = event['year']
        des = event['description']
        print("\n", des, "In", year, "\n", "\n------------------------------------------------------")
    custom = input("Enter custom date y/n: ")
    if ((custom == "y") or (custom == "Y") or (custom == "yes") or (custom == "Yes")):
        os.system('clear')
        while True:
            try:
                cmonth = int(input("\nEnter month: "))
                cday = int(input("\nEnter day: "))
                url = "https://byabbe.se/on-this-day/%s/%s/events.json" % (
                    cmonth, cday)
                response = requests.request("GET", url)
                data = response.json()['events']
                for event in data:
                    year = event['year']
                    des = event['description']
                    print(cday, "/", cmonth)
                    print("\n", des, "In", year, "\n", "\n----------\n")
                break
                exit()
            except ValueError:
                print("invalid input! enter integer...")
                break
            break
    elif ((custom == "n") or (custom == "N") or (custom == "No") or (custom == "no")):
        print("Exiting program...")
        exit()
    else:
        print("Invalid input")
    exit()

def fun_fact():
    url = "https://ffa.aakhilv.me/text"
    urll = "https://uselessfacts.jsph.pl/random.json?language=en"
    response = requests.request("GET", url)
    responsel = requests.request("GET", urll)
    data = responsel.json()['text']
    print("\nFunfact: ", response.text, "\n\nUseless but Fun fact: ", data)

def insult():
    url = "https://evilinsult.com/generate_insult.php?lang=en&type=json"
    response = requests.request("GET", url)
    data = response.json()['insult']
    print(data)
    print("\n")

def jokes():
    resp = requests.get("https://v2.jokeapi.dev/joke/Any?")
    jokes = resp.json().get("joke")

    if jokes is None:
        print(f' {resp.json().get("setup")}\n')
        print(f'{resp.json().get("delivery")}')
        print("\n")
        exit()
    else:
        print(f' {resp.json().get("joke")}')
        print("\n")
        exit()
        
def numbers_fact():
    url = "http://numbersapi.com/random/math"
    data = requests.request("GET", url)
    data = data.text
    print(data)
    print("\n")


def periodic_table():
    with open('ptable.json') as f:
        data = json.load(f)
    key = "name"
    val = input("Enter element name: ").capitalize()
    element = next(filter(lambda d: d.get(key) == val, data), None)
    print("\nElement: ", element['name'].upper())
    print("\nSymbol: ", element['symbol'])
    print("\nAtomic Number: ", element['atomicNumber'])
    print("\nAtomic Mass: ", element['atomicMass'])
    print("\nAtomic Radius: ", element['atomicRadius'])
    print("\nDensity: ", element['density'])
    print("\nGroup Block: ", element['groupBlock'])
    print("\nBlock: ", element['block'])
    print("\nStandard state: ", element['standardState'])
    print("\nBonding Type: ", element['bondingType'])
    print("\nBoiling Point: ", element['boilingPoint'])
    print("\nOxidation state: ", element['oxidationStates'])
    print("\nCrystal Structure: ", element['crystalStructure'])
    print("\nColor in HEX: ", element['cpkHexColor'])
    print("\nElectron Affinity: ", element['electronAffinity'])
    print("\nMagnetic Ordering: ", element['magneticOrdering'])
    print("\nStandard state: ", element['standardState'])
    print("\nYear Discovered: ", element['yearDiscovered'])
    print("\nFacts: ", element['facts'])
    print("\nHistory: ", element['history'])

def main_menu():
    print("\n")
    print("[1] Advice")
    print("[2] Bored")
    print("[3] History")
    print("[4] Fun Fact")
    print("[5] Insult")
    print("[6] Jokes")
    print("[7] Numbers Fact")
    print("[8] Periodic Table")
    print("[0] Exit")

while True:
    main_menu()
    user_query=int(input("\nEnter tool number: "))
    while user_query != 0:
        if user_query == 1:
            os.system("clear")
            print("Advice: \n")
            advice()
            exit()
        elif user_query == 2:
            os.system("clear")
            print("Activity for boredom: \n")
            bored()
            exit()
        elif user_query == 3:
            os.system("clear")
            print("History: \n")
            history()
            exit()
        elif user_query == 4:
            os.system("clear")
            print("Fun facts: \n")
            fun_fact()
            exit()
        elif user_query == 5:
            os.system("clear")
            print("Insult: \n")
            insult()
            exit()
        elif user_query == 6:
            os.system("clear")
            print("Jokes:  \n")
            jokes()
            exit()
        elif user_query == 7:
            os.system("clear")
            print("Number Fact: \n")
            numbers_fact()
            exit()
        elif user_query == 8:
            os.system("clear")
            print("Periodic Table: \n")
            periodic_table()
            exit()
        continue
    type = f'Exiting the Program...\n'
    tyty()
    
