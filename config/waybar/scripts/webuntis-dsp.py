import webuntis
import datetime

s = webuntis.Session(
    server='###.webuntis.com',
    username='###',
    password='###',
    school='###',
    useragent='WebUntis Test'
)

currentDate = datetime.date.today()
currentTime = datetime.datetime.now().time()

s.login()

klasse = s.klassen().filter(name='###')[0]

table = s.timetable(klasse=klasse, start=currentDate, end=currentDate).to_table()

#print(table)
if not table:
    print('no classes')
else:
    for entries in table:
        if entries[0] >= currentTime > datetime.time(6, 0):
            time_str = entries[0].strftime("%H:%M")
            for date, periods in entries[1]:
                for p in periods:
                    print(f"{time_str} -> {p.subjects}{p.rooms}")
            break

s.logout()