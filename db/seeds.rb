Airport.delete_all

sfo = Airport.create(code: "SFO", name: "San Francisco")
jfk = Airport.create(code: "JFK", name: "John F. Kennedy (NYC)")
hou = Airport.create(code: "HOU", name: "George Bush (Houston)")
dfw = Airport.create(code: "DFW", name: "Dallas-Fort Worth")
ord = Airport.create(code: "ORD", name: "O'Hare (Chicago)")
lax = Airport.create(code: "LAX", name: "Los Angeles")
iad = Airport.create(code: "IAD", name: "Dulles (Washington, D.C.)")
lgw = Airport.create(code: "LGW", name: "Gatwick (London)")
mia = Airport.create(code: "MIA", name: "Miami")
dub = Airport.create(code: "DUB", name: "Dublin")
thf = Airport.create(code: "THF", name: "Tempelhoff (Berlin)")
svo = Airport.create(code: "SVO", name: "Sheremetyevo (Moscow)")
yvr = Airport.create(code: "YVR", name: "Vancouver")
mex = Airport.create(code: "MEX", name: "Mexico City")
ath = Airport.create(code: "ATH", name: "Athens")
hnd = Airport.create(code: "HND", name: "Haneda (Tokyo)")
pek = Airport.create(code: "PEK", name: "Beijing")
gig = Airport.create(code: "GIG", name: "Rio de Janeiro")
cdg = Airport.create(code: "CDG", name: "Charles de Gaulle (Paris)")
fco = Airport.create(code: "FCO", name: "Fiumicino (Rome)")
den = Airport.create(code: "DEN", name: "Denver")
atl = Airport.create(code: "ATL", name: "Hartsfield-Jackson (Atlanta)")

Flight.delete_all

# San Francisco
Flight.create(origin_id: sfo.id, destination_id: hnd.id, duration: 665, start: DateTime.new(2016,8,1,17))
Flight.create(origin_id: sfo.id, destination_id: pek.id, duration: 725, start: DateTime.new(2016,10,5,16,30))
Flight.create(origin_id: sfo.id, destination_id: yvr.id, duration: 140, start: DateTime.new(2016,12,5,16,30))

# O'Hare (Chicago)
Flight.create(origin_id: ord.id, destination_id: yvr.id, duration: 280, start: DateTime.new(2016,6,22,11,5))
Flight.create(origin_id: ord.id, destination_id: hou.id, duration: 165, start: DateTime.new(2016,7,3,14,5))
Flight.create(origin_id: ord.id, destination_id: iad.id, duration: 110, start: DateTime.new(2016,9,14,23,55))
Flight.create(origin_id: ord.id, destination_id: atl.id, duration: 105, start: DateTime.new(2017,1,20,9))

# Tempelhoff (Berlin)
Flight.create(origin_id: thf.id, destination_id: svo.id, duration: 145, start: DateTime.new(2016,3,19,22,35))
Flight.create(origin_id: thf.id, destination_id: dub.id, duration: 150, start: DateTime.new(2016,7,7,7))
Flight.create(origin_id: thf.id, destination_id: fco.id, duration: 120, start: DateTime.new(2016,8,15,20,40))
Flight.create(origin_id: thf.id, destination_id: ath.id, duration: 180, start: DateTime.new(2016,11,2,3,50))

# Los Angeles
Flight.create(origin_id: lax.id, destination_id: pek.id, duration: 770, start: DateTime.new(2017,1,27,9,55))
Flight.create(origin_id: lax.id, destination_id: mex.id, duration: 220, start: DateTime.new(2017,4,11,7))
Flight.create(origin_id: lax.id, destination_id: ord.id, duration: 240, start: DateTime.new(2017,10,19,23,25))

# Gatwick (London)
Flight.create(origin_id: lgw.id, destination_id: dub.id, duration: 80,  start: DateTime.new(2016,3,18,1))
Flight.create(origin_id: lgw.id, destination_id: cdg.id, duration: 75,  start: DateTime.new(2016,9,12,1,45))
Flight.create(origin_id: lgw.id, destination_id: jfk.id, duration: 500, start: DateTime.new(2017,1,18,10,5))

# JFK (NYC)
Flight.create(origin_id: jfk.id, destination_id: mex.id, duration: 330, start: DateTime.new(2016,5,9,10,20))
Flight.create(origin_id: jfk.id, destination_id: yvr.id, duration: 380, start: DateTime.new(2016,11,17,19,25))
Flight.create(origin_id: jfk.id, destination_id: ord.id, duration: 150, start: DateTime.new(2017,1,10,4,40))
Flight.create(origin_id: jfk.id, destination_id: lgw.id, duration: 400, start: DateTime.new(2017,7,23,2))

# Fiumicino (Rome)
Flight.create(origin_id: fco.id, destination_id: ath.id, duration: 115, start: DateTime.new(2016,6,25,2,45))
Flight.create(origin_id: fco.id, destination_id: thf.id, duration: 125, start: DateTime.new(2016,6,28,12,10))
Flight.create(origin_id: fco.id, destination_id: pek.id, duration: 630, start: DateTime.new(2017,6,25,2,45))

# Charles de Gaulle (Paris)
Flight.create(origin_id: cdg.id, destination_id: mia.id, duration: 510, start: DateTime.new(2017,1,30,14))
Flight.create(origin_id: cdg.id, destination_id: lgw.id, duration: 70,  start: DateTime.new(2017,6,26,19,20))
Flight.create(origin_id: cdg.id, destination_id: fco.id, duration: 120, start: DateTime.new(2017,7,31,11,5))
Flight.create(origin_id: cdg.id, destination_id: svo.id, duration: 210, start: DateTime.new(2018,3,2,8,55))

# Hartsfield-Jackson (Atlanta)
Flight.create(origin_id: atl.id, destination_id: gig.id, duration: 560, start: DateTime.new(2016,4,30,19,25))
Flight.create(origin_id: atl.id, destination_id: den.id, duration: 210, start: DateTime.new(2016,10,31,18,5))
Flight.create(origin_id: atl.id, destination_id: dfw.id, duration: 205, start: DateTime.new(2017,2,1,7))

# Dulles (D.C.)
Flight.create(origin_id: iad.id, destination_id: den.id, duration: 250, start: DateTime.new(2016,5,27,13,15))
Flight.create(origin_id: iad.id, destination_id: jfk.id, duration: 65,  start: DateTime.new(2016,12,27,1))
Flight.create(origin_id: iad.id, destination_id: lgw.id, duration: 425, start: DateTime.new(2017,7,27,15,5))
Flight.create(origin_id: iad.id, destination_id: cdg.id, duration: 455, start: DateTime.new(2017,11,27,8,40))
Flight.create(origin_id: iad.id, destination_id: svo.id, duration: 545, start: DateTime.new(2018,3,27,4,20))
Flight.create(origin_id: iad.id, destination_id: hnd.id, duration: 845, start: DateTime.new(2018,8,27,23,35))

# Dallas-Fort Worth
Flight.create(origin_id: dfw.id, destination_id: hou.id, duration: 70,  start: DateTime.new(2020,4,1,12,5))
Flight.create(origin_id: dfw.id, destination_id: mex.id, duration: 145, start: DateTime.new(2020,4,1,12,5))

# Denver
Flight.create(origin_id: den.id, destination_id: ord.id, duration: 150, start: DateTime.new(2016,7,13,22,40))
Flight.create(origin_id: den.id, destination_id: hou.id, duration: 140, start: DateTime.new(2016,10,7,5,10))
Flight.create(origin_id: den.id, destination_id: mia.id, duration: 405, start: DateTime.new(2016,12,19,11,55))

# Vancouver
Flight.create(origin_id: yvr.id, destination_id: lax.id, duration: 165, start: DateTime.new(2016,9,20,14))
Flight.create(origin_id: yvr.id, destination_id: pek.id, duration: 670, start: DateTime.new(2017,1,26,3,55))

# Miami
Flight.create(origin_id: mia.id, destination_id: gig.id, duration: 505, start: DateTime.new(2017,2,9,0,5))
Flight.create(origin_id: mia.id, destination_id: mex.id, duration: 415, start: DateTime.new(2017,5,4,2,15))

# Mexico City
Flight.create(origin_id: mex.id, destination_id: lax.id, duration: 255, start: DateTime.new(2017,5,12,12,30))
Flight.create(origin_id: mex.id, destination_id: jfk.id, duration: 290, start: DateTime.new(2017,10,14,0))

# Houston
Flight.create(origin_id: hou.id, destination_id: jfk.id, duration: 205, start: DateTime.new(2016,11,10,11,10))
Flight.create(origin_id: hou.id, destination_id: mex.id, duration: 135, start: DateTime.new(2016,12,4,16,35))

# Dublin
Flight.create(origin_id: dub.id, destination_id: lgw.id, duration: 70,  start: DateTime.new(2016,3,19,4,45))
Flight.create(origin_id: dub.id, destination_id: jfk.id, duration: 440, start: DateTime.new(2016,8,25,5))
Flight.create(origin_id: dub.id, destination_id: thf.id, duration: 135, start: DateTime.new(2016,10,1,21,15))
Flight.create(origin_id: dub.id, destination_id: iad.id, duration: 470, start: DateTime.new(2016,11,23,20,10))

# Sheremetyevo (Moscow)
Flight.create(origin_id: svo.id, destination_id: pek.id, duration: 440, start: DateTime.new(2016,4,20,16,20))
Flight.create(origin_id: svo.id, destination_id: thf.id, duration: 165, start: DateTime.new(2016,5,13,12,40))
Flight.create(origin_id: svo.id, destination_id: jfk.id, duration:1785, start: DateTime.new(2021,12,25,1))

# Haneda (Tokyo)
Flight.create(origin_id: hnd.id, destination_id: pek.id, duration: 250, start: DateTime.new(2016,7,15,11,5))
Flight.create(origin_id: hnd.id, destination_id: yvr.id, duration: 535, start: DateTime.new(2016,8,2,13,30))
Flight.create(origin_id: hnd.id, destination_id: sfo.id, duration: 560, start: DateTime.new(2017,3,9,22,55))
