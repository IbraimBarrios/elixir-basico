#time

#obtener hora actual
Time.utc_now
~T[18:42:07.548515]


t = Time.utc_now

#obtiene la hora
t.hour
#obtiene los minutos
t.minute

#Date
#obtener fecha actual
Date.utc_today
~D[2022-02-28]

date = Date.utc_today
#obtener año
date.year

#obtner mes
date.month

#obtener dia
date.day


#fecha y hora
NaiveDateTime.utc_now
~N[2022-04-28 19:00:12.022289]
#obtiene el año
dt.year
#obtinen los segundo
dt.second

#agregando tiempo (30 segundos)
NaiveDateTime.add(~N[2022-04-28 00:00:20], 30)
~N[2022-04-28 00:00:50]
