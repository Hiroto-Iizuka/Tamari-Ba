
User.create!(name: "管理者", 
             email: "admin@example.com",
             password: "password",
             password_confirmation: "password",
             admin: true)

User.create!(name: "田中",
             email: "tanaka@example.com",
             password: "password",
             password_confirmation: "password")

User.create!(name: "佐藤",
             email: "sato@example.com",
             password: "password",
             password_confirmation: "password")

User.create!(name: "Watanabe",
             email: "watanabe@example.com",
             password: "password",
             password_confirmation: "password")

puts "初期データの投入に成功しました！"