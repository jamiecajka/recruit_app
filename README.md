# README

# Recruit App
 This project was created as the Stage Two competency project for the Nebraska DevLabs (NeDL) Pipeline Program through Doane University and Don't Panic Labs. This app was created to help manage recruits for the Women's Basketaball program at Doane University. The requirements were that an prospective student could submit an application to the program, and coaches could add recruits, accept or deny applications, view recruits, add notes to a recruit, and track progress of a recruit through their funnel progress system.

## Technologies
  This app is currently build using Ruby on Rails, with PostreSql and ActiveRecord handling the database.
  Devise is used for user authentication, and CSS was used for styling.

## Setup
  To get setup, run:
  ```
  bundle
  rails db:create
  rails db:migrate
  rails db:seed
  rails s
  ```
  Navigate to ```localhost:3000```
  To have access to the user content, use email: vulcan_wolf@example.org password: encrypted_password
  To have access to the admin content, user email: user@email.com password: password
