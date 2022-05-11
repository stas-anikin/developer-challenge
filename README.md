# Fall 2022 - Shopify Developer Intern Challenge

This is an inventory tracking web application for a logistics company. It has the basic CRUD functionality and an additional feature of allowing deletion comments and undeletion. 
  This project is built using **ruby 2.6.6p146** and **rails 5.1.7**
  
**Installation steps:**

install dependencies - `bundle install`
create database - `rails db:create`
run migrations - `rails db:migrate`
seed fake data (optional) - `rails db:seed`
start the server - `rails s`
navigate to `http://localhost:3000/` in your browser

  I chose the path of doing more with less and only used one additional gem for this project – **Faker** to populate the seeds file.

  Soft deletion could have been implemented with an additional gem such as **paper_trail** or **act-as-paranoid** or via **ActiveSupport::Concern**, but I simply added a boolean `deleted` column to the `items` table and customized the update method to allow for soft deletion, undeletion and addition of deletion comments.
  I also took the note of CSS/Design/Authentication/Custom UI/Frameworks very literally and created a very minimalist and ascetic views. Normally, I would have used **React** with a **Semantic UI** for front end and either **cancancan** or **devise** for authorization purposes depending on the project requirements.
  
Here is the [**Repl**](https://replit.com/@StanislavAnikin/HoneydewGenerousRom) and here is the [**App**]( https://replit.com/@StanislavAnikin/HoneydewGenerousRom)
  Thank you for your time and consideration!
  
  **Stas Anikin**
