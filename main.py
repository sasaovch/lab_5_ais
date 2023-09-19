from pyswip import Prolog
import re 

path = 're.pl'
incorrect_request = 'Неправильный запрос'
special_line = "-----------"

prolog = Prolog()
prolog.consult(path, False)

requests = [
    f'Какая материнская плата подходит для PROCESSOR?',
    f'Какой процессор подходит для MOTHERBOARD?',
    f'Какой ПК можно собрать за BUDGET?',
    f'Хватит ли BUDGET, чтобы взять PROCESSOR и MOTHERBOARD?',
    f'Совместимы ли PROCESSOR и MOTHERBOARD?'
]

patterns = [
    r'Какая материнская плата подходит для (.+)\?',
    r'Какой процессор подходит для (.+)\?',
    r'Какой ПК можно собрать за (.+)\?',
    r'Хватит ли (.+), чтобы взять (.+) и (.+)\?',
    r'Совместимы ли (.+) и (.+)\?',
]

def handler0(pattern, request):
    match = re.search(pattern, request)
    processor = match.group(1)
    answer = list(prolog.query(f'get_motherboard_for_processor({processor}, Motherboard)'))
    if len(answer) == 0:
        print(incorrect_request)
    else:
        print(special_line)
        for item in answer:
            print(item["Motherboard"])
        print(special_line)

def handler1(pattern, request):
    match = re.search(pattern, request)
    motherboard = match.group(1)
    answer = list(prolog.query(f'get_processors_for_motherboard({motherboard}, Processor)'))
    if len(answer) == 0:
        print(incorrect_request)
    else:
        print(special_line)
        for item in answer:
            print(item["Processor"])
        print(special_line)

def handler2(pattern, request):
    match = re.search(pattern, request)
    budget = match.group(1)
    answer = list(prolog.query(f'create_pc_by_budget({budget}, Processor, Motherboard, Card)'))
    if len(answer) == 0:
        print(incorrect_request)
    else:
        print(special_line)
        for item in answer:
            print(item["Processor"])
            print(item["Motherboard"])
            print(item["Card"])
        print(special_line)

def handler3(pattern, request):
    match = re.search(pattern, request)
    budget = match.group(1)
    processor = match.group(2)
    motherboard = match.group(3)
    answer = bool(list(prolog.query(f'check_budget({processor}, {motherboard}, {budget})')))
    if answer:
        print('Бюджета достаточно')
    else:
        print('Бюджета не достаточно')

def handler4(pattern, request):
    match = re.search(pattern, request)
    processor = match.group(1)
    motherboard = match.group(2)
    answer = bool(list(prolog.query(f'compatible_processor_motherboard({processor}, {motherboard})')))
    if answer:
        print('Совместимы')
    else:
        print('Не совместимы')

handlers = {
    patterns[0]: handler0,
    patterns[1]: handler1,
    patterns[2]: handler2,
    patterns[3]: handler3,
    patterns[4]: handler4,
}

if __name__=='__main__':
    while(True):
        print('Введите запрос, h - посмотреть возможные запросы, q - выйти')
        request = input()
        if (request == 'q'):
            break
        elif (request == 'h'):
            for request_ex in requests:
                print(request_ex)
            continue
        found = False
        for pattern in patterns:
            if re.match(pattern, request):
                handlers[pattern](pattern, request)
                found = True
        if(not found):
            print('Неправильный запрос. Введите h, чтобы посмотреть список запросов')
