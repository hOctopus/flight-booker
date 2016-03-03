Airport.delete_all

sfo = Airport.create(code: "SFO", name: "San Francisco")
jfk = Airport.create(code: "JFK", name: "New York City (JFK)")
hou = Airport.create(code: "HOU", name: "Houston (George Bush Intercontinental)")
dfw = Airport.create(code: "DFW", name: "Dallas-Fort Worth")
ord = Airport.create(code: "ORD", name: "Chicago (O'Hare)")
lax = Airport.create(code: "LAX", name: "Los Angeles (LAX)")
iad = Airport.create(code: "IAD", name: "Washington, D.C.(Dulles)")

Flight.delete_all

t_start = Time.now + 6.months
t_end = t_start + 1.year

3.times do
  flight_date = rand(t_start..t_end)

  2.times do
    flight_time = rand(flight_date.beginning_of_day..flight_date.end_of_day)

    Flight.create(origin_id: sfo.id, destination_id: jfk.id, duration: 315, start: flight_time)
    Flight.create(origin_id: sfo.id, destination_id: hou.id, duration: 240, start: flight_time)
    Flight.create(origin_id: sfo.id, destination_id: dfw.id, duration: 215, start: flight_time)
    Flight.create(origin_id: sfo.id, destination_id: ord.id, duration: 245, start: flight_time)
    Flight.create(origin_id: sfo.id, destination_id: lax.id, duration: 85,  start: flight_time)
    Flight.create(origin_id: sfo.id, destination_id: iad.id, duration: 300, start: flight_time)

    Flight.create(origin_id: jfk.id, destination_id: sfo.id, duration: 315, start: flight_time)
    Flight.create(origin_id: jfk.id, destination_id: hou.id, duration: 235, start: flight_time)
    Flight.create(origin_id: jfk.id, destination_id: dfw.id, duration: 245, start: flight_time)
    Flight.create(origin_id: jfk.id, destination_id: ord.id, duration: 140, start: flight_time)
    Flight.create(origin_id: jfk.id, destination_id: lax.id, duration: 370, start: flight_time)
    Flight.create(origin_id: jfk.id, destination_id: iad.id, duration: 65,  start: flight_time)

    Flight.create(origin_id: hou.id, destination_id: sfo.id, duration: 240, start: flight_time)
    Flight.create(origin_id: hou.id, destination_id: jfk.id, duration: 235, start: flight_time)
    Flight.create(origin_id: hou.id, destination_id: dfw.id, duration: 70,  start: flight_time)
    Flight.create(origin_id: hou.id, destination_id: ord.id, duration: 155, start: flight_time)
    Flight.create(origin_id: hou.id, destination_id: lax.id, duration: 215, start: flight_time)
    Flight.create(origin_id: hou.id, destination_id: iad.id, duration: 235, start: flight_time)

    Flight.create(origin_id: dfw.id, destination_id: sfo.id, duration: 215, start: flight_time)
    Flight.create(origin_id: dfw.id, destination_id: jfk.id, duration: 245, start: flight_time)
    Flight.create(origin_id: dfw.id, destination_id: hou.id, duration: 70,  start: flight_time)
    Flight.create(origin_id: dfw.id, destination_id: ord.id, duration: 140, start: flight_time)
    Flight.create(origin_id: dfw.id, destination_id: lax.id, duration: 200, start: flight_time)
    Flight.create(origin_id: dfw.id, destination_id: iad.id, duration: 170, start: flight_time)

    Flight.create(origin_id: ord.id, destination_id: sfo.id, duration: 245, start: flight_time)
    Flight.create(origin_id: ord.id, destination_id: jfk.id, duration: 140, start: flight_time)
    Flight.create(origin_id: ord.id, destination_id: hou.id, duration: 155, start: flight_time)
    Flight.create(origin_id: ord.id, destination_id: dfw.id, duration: 140, start: flight_time)
    Flight.create(origin_id: ord.id, destination_id: lax.id, duration: 270, start: flight_time)
    Flight.create(origin_id: ord.id, destination_id: iad.id, duration: 105, start: flight_time)

    Flight.create(origin_id: lax.id, destination_id: sfo.id, duration: 85,  start: flight_time)
    Flight.create(origin_id: lax.id, destination_id: jfk.id, duration: 370, start: flight_time)
    Flight.create(origin_id: lax.id, destination_id: hou.id, duration: 215, start: flight_time)
    Flight.create(origin_id: lax.id, destination_id: dfw.id, duration: 200, start: flight_time)
    Flight.create(origin_id: lax.id, destination_id: ord.id, duration: 270, start: flight_time)
    Flight.create(origin_id: lax.id, destination_id: iad.id, duration: 300, start: flight_time)

    Flight.create(origin_id: iad.id, destination_id: sfo.id, duration: 300, start: flight_time)
    Flight.create(origin_id: iad.id, destination_id: jfk.id, duration: 65,  start: flight_time)
    Flight.create(origin_id: iad.id, destination_id: hou.id, duration: 235, start: flight_time)
    Flight.create(origin_id: iad.id, destination_id: dfw.id, duration: 170, start: flight_time)
    Flight.create(origin_id: iad.id, destination_id: ord.id, duration: 105, start: flight_time)
    Flight.create(origin_id: iad.id, destination_id: lax.id, duration: 300, start: flight_time)
  end
end
