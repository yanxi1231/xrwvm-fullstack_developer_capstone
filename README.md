# fullstack_developer_capstone

## Part 1: Frontend Design with Django

- Set up a Python **virtual environment** (`djangoenv`) to isolate project dependencies
- Installed all required packages from `requirements.txt` using pip
- Ran `makemigrations` and `migrate` to initialize the **SQLite database**
- Project follows a standard Django structure with `djangoproj` (config) and `djangoapp` (application logic)
- Created static **HTML** pages styled with **Bootstrap** and custom **CSS**
- Built three main pages:
  - **Home** — landing page for the dealership
  - **About Us** — displays team member cards with roles and contact info
  - **Contact Us** — features a dealership banner, support icon, and contact details
- **Django** handles **URL routing** through `urls.py` to link pages together
- Static assets (images, CSS, Bootstrap) served through Django's **static files** system
- A **React app** structure (`frontend/src`, `frontend/public`) is in place for future dynamic UI development
- Overall goal: establish the **project setup, page layout, styling, and navigation** as the static foundation for later parts

## Part 2: User Authentication
**Technologies used:** Python, Django, Django Auth, JavaScript, React, React Router, JSON, Bootstrap, SQLite

- Created a Django **superuser** for admin access and management
- Configured the React **frontend build** (`npm run build`) to compile into static files served by Django
- Implemented **three Django views** in `views.py`:
  - **`login_user`** — Authenticates user credentials using `django.contrib.auth.authenticate()` and creates a session
  - **`logout_request`** — Terminates the user session using `django.contrib.auth.logout()` and returns empty JSON
  - **`registration`** — Creates a new user account using Django's built-in `User` model
- Configured **Django URL routes** in `djangoapp/urls.py` for `/login`, `/logout`, and `/register` endpoints
- Built **React components** (`LoginPanel`, `RegisterPanel`) to provide the frontend UI for authentication
- Added **React routes** in `App.js` using `react-router-dom` to navigate between login and register pages
- Used **`@csrf_exempt`** decorator to allow JSON POST requests from the React frontend
- Communication between React and Django uses **JSON** (`JsonResponse` on backend, `json.loads()` for parsing)
- Updated **Django settings** to serve React's built static files
- Verified the complete **sign up → sign in → sign out** flow works end to end

## Backend services:
### Node.js Mongo DB dockerized server
**Technologies Used:** Node.js, Express.js, MongoDB, Mongoose, Docker, IBM Code Engine, Django

- Developed a **Node.js backend application** using **Express.js** to provide RESTful API services.
- Connected the application to a **MongoDB database** using **Mongoose** for managing dealership and review data.
- Loaded initial data from **JSON files** into MongoDB collections.
- Implemented and tested API endpoints such as `/fetchReviews/dealer/:id`, `/fetchDealers`, and `/fetchDealers/:state`...
- Containerized the application using **Docker** for consistent deployment.
- Deployed the containerized backend on **IBM Code Engine** so the **Django application** can access the APIs.

### Django Models and Proxy Services