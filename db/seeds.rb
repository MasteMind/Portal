# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

m1 = Mentor.create(name: "Raj Sahu", email: "raj.sahu@cialfo.com", contact: "+91********38")
m2 = Mentor.create(name: "Hem Lata", email: "hem.lata@cialfo.com", contact: "+91********98")
m3= Mentor.create(name: "Chris Evans", email: "chris.evans@cialfo.com", contact: "+91********85")
m4 = Mentor.create(name: "Tony Menon", email: "tony.menon@cialfo.com", contact: "+91********78")
m5 = Mentor.create(name: "Lata Maheshwari", email: "lata.maheshwari@cialfo.com", contact: "+91********95")
m6 = Mentor.create(name: "Richa Sinha", email: "richa.sinha@cialfo.com", contact: "+91********65")
m7 = Mentor.create(name: "Lalit Pandey", email: "lalit.pandey@cialfo.com", contact: "+91********15")
m8 = Mentor.create(name: "Taran Pal", email: "taran.pal@cialfo.com", contact: "+91********06")
m9 = Mentor.create(name: "Ritu Shrivastava", email: "ritu.shrivastava@cialfo.com", contact: "+91********98")
m10 = Mentor.create(name: "Roy Mustang", email: "roy.mustang@cialfo.com", contact: "+91********30")

s1 = Student.create(name: "Ravi Raj", email: "ravi.raj@inbox.com", contact: "+91********64")
s2 = Student.create(name: "Roy Gill", email: "roy.gill@inbox.com", contact: "+91********32")
s3 = Student.create(name: "Shahana Khan", email: "shahana.khan@inbox.com", contact: "+91********47")
s4 = Student.create(name: "Rishabh Banjare", email: "rishabh.banjare@inbox.com", contact: "+91********20")
s5 = Student.create(name: "Tarun Singh", email: "tarun.singh@inbox.com", contact: "+91********49")
s6 = Student.create(name: "Raju Yadav", email: "raju.yadav@inbox.com", contact: "+91********19")
s7 = Student.create(name: "Ruby Singh", email: "ruby.singh@inbox.com", contact: "+91********82")
s8 = Student.create(name: "Varun Dhawle", email: "varun.dhawle@inbox.com", contact: "+91********46")
s9 = Student.create(name: "Stuti Kiran", email: "stuti.kiran@inbox.com", contact: "+91********94")
s10 = Student.create(name: "Yeshashwi Sinha", email: "yeshashwi.sinha@inbox.com", contact: "+91********52")
s11 = Student.create(name: "Palak Verma", email: "palak.verma@inbox.com", contact: "+91********95")
s12 = Student.create(name: "Yadu Komre", email: "yadu.komre@inbox.com", contact: "+91********76")

m1.students << [s2, s5, s9]
m2.students << [s1, s9, s4, s7]
m3.students << [s8, s4, s3]
m4.students << [s1, s9, s8, s6, s7]
m5.students << [s5, s2, s11, s10]
m6.students << [s12, s4, s3, s8, s9, s5]
m7.students << [s12, s8, s9, s4, s3]
m8.students << [s4, s5, s8, s2, s7, s9, s5 ]
m9.students << [s7, s5, s3, s11, s10]
m10.students << [s10, s2, s11, s8, s9, s7, s6]