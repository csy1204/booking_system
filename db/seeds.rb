# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Major.create([{name: '신문방송학과', notice: '신문방송학과입니다', book_start: Time.now, book_end: Time.now },
              {name: '교육학과', notice: '교육학과입니다', book_start: Time.now, book_end: Time.now },
              {name: '문헌정보학과', notice: '문헌정보학과입니다', book_start: Time.now, book_end: Time.now }])


Section.create([{major_id: 1, len_x: 6,len_y: 5, name: '세션A', location: '수선관 6층'},
                {major_id: 2, len_x: 6,len_y: 5, name: '세션A', location: '인문관 4층'},
                {major_id: 3, len_x: 6,len_y: 5, name: '세션A', location: '호암관 3층'}])
Section.create([{major_id: 1, len_x: 6,len_y: 5, name: '세션B', location: '수선관 6층'},
                {major_id: 2, len_x: 6,len_y: 5, name: '세션B', location: '인문관 4층'},
                {major_id: 3, len_x: 6,len_y: 5, name: '세션B', location: '호암관 3층'}])

(1..3).each do |s|
  n=1
  (1..5).each do |y|
    (1..6).each do |x|
      Locker.create(section_id: s, loc_x: x, loc_y: y, loc_name: 'A'+n.to_s, loc_state: true)
      n += 1
    end
  end
end

(4..6).each do |s|
  n=1
  (1..5).each do |y|
    (1..6).each do |x|
      Locker.create(section_id: s, loc_x: x, loc_y: y, loc_name: 'B'+n.to_s, loc_state: true)
      n += 1
    end
  end
end

(1..3).each do |n|
  (1..5).each do |r|
    user = User.create(email: Faker::Internet.email, password: 'test123', major_id: n, school_num: 123132)
    bo = Booking.new(locker_id: n*r)
    bo.user = user
    bo.major = user.major
    bo.save
  end
end














