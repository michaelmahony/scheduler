# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


race_pace = Firm.create!(name: 'Race Pace Bicycles', phone_number: '4435155834', address: '55 N Albany St',
                          city: 'Catonsville', state: 'MD', zip_code: '21228',
                        mon_open_time: "10:30:00", mon_close_time: '20:00:00',
                        tue_open_time: "10:30:00", tue_close_time: '20:00:00',
                        wed_open_time: "10:30:00", wed_close_time: '20:00:00',
                        thu_open_time: "10:30:00", thu_close_time: '20:00:00',
                        fri_open_time: "10:30:00", fri_close_time: '20:00:00',
                        sat_open_time: "8:30:00", sat_close_time: '16:30:00',
                        sun_open_time: "10:30:00", sun_close_time: '16:00:00',

                        # mon_staff_target: 3, mon_staff_min: 2, mon_staff_max: 5,
                        # tue_staff_target: 3, tue_staff_min: 2, tue_staff_max: 5,
                        # wed_staff_target: 3, wed_staff_min: 2, wed_staff_max: 5,
                        # thu_staff_target: 3, thu_staff_min: 2, thu_staff_max: 5,
                        # fri_staff_target: 4, fri_staff_min: 2, fri_staff_max: 5,
                        # sat_staff_target: 4, sat_staff_min: 2, sat_staff_max: 5,
                        # sun_staff_target: 2, sun_staff_min: 1, sun_staff_max: 3,


)

john = Employee.create(firm: race_pace, first_name: 'John', last_name: 'Howard', email_address: 'jh@gmail.com',
                       phone_number: '4435558959', hourly_pay_rate: 17.0, overtime_exempt: false,
                       overtime_multiplier: 1.5, lunch_duration: 1.0, hours_overtime_threshold: 40,
                       mon_pref: 1.0,
                       tue_pref: 1.0,
                       wed_pref: 1.0,
                       thu_pref: 1.0,
                       fri_pref: 1.0,
                       sat_pref: 0.5,
                       sun_pref: 0.0,
)

mark = Employee.create(firm: race_pace, first_name: 'Mark', last_name: 'Ferrel', email_address: 'jh@gmail.com',
                       phone_number: '4435558959', hourly_pay_rate: 17.0, overtime_exempt: false,
                       overtime_multiplier: 1.5, lunch_duration: 1.0, hours_overtime_threshold: 40,
                       mon_pref: 1.0,
                       tue_pref: 1.0,
                       wed_pref: 1.0,
                       thu_pref: 1.0,
                       fri_pref: 1.0,
                       sat_pref: 0.0,
                       sun_pref: 0.0,
)

tim = Employee.create(firm: race_pace, first_name: 'Tim', last_name: 'Horton', email_address: 'jh@gmail.com',
                       phone_number: '4435558959', hourly_pay_rate: 17.0, overtime_exempt: false,
                       overtime_multiplier: 1.5, lunch_duration: 1.0, hours_overtime_threshold: 40,
                       mon_pref: 0.0,
                       tue_pref: 0.0,
                       wed_pref: 0.0,
                       thu_pref: 0.0,
                       fri_pref: 1.0,
                       sat_pref: 1.0,
                       sun_pref: 1.0,
)

jack = Employee.create(firm: race_pace, first_name: 'Jack', last_name: 'Smith', email_address: 'jh@gmail.com',
                       phone_number: '4435558959', hourly_pay_rate: 17.0, overtime_exempt: false,
                       overtime_multiplier: 1.5, lunch_duration: 1.0, hours_overtime_threshold: 40,
                       mon_pref: 0.5,
                       tue_pref: 0.5,
                       wed_pref: 0.5,
                       thu_pref: 1.0,
                       fri_pref: 0.0,
                       sat_pref: 0.5,
                       sun_pref: 0.0,
)