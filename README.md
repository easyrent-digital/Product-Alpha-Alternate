[![Backend CI](https://github.com/aelassas/bookcars/actions/workflows/backend.yml/badge.svg)](https://github.com/aelassas/bookcars/actions/workflows/backend.yml)
[![Frontend CI](https://github.com/aelassas/bookcars/actions/workflows/frontend.yml/badge.svg)](https://github.com/aelassas/bookcars/actions/workflows/frontend.yml) [![CodeFactor](https://www.codefactor.io/repository/github/aelassas/bookcars/badge)](https://www.codefactor.io/repository/github/aelassas/bookcars) [![open in vscode](https://img.shields.io/badge/open%20in-vscode-1f425f.svg)](https://vscode.dev/github/aelassas/bookcars) [![code style: prettier](https://img.shields.io/badge/code_style-prettier-ff69b4.svg)](https://github.com/prettier/prettier)

<p align="center">
  <img src="https://bookcars.github.io/content/bookcars.drawio.png" alt="" width="380" />
</p>

BookCars is an open source car rental platform, supplier oriented, with a backend for managing car fleet and bookings, a frontend and a mobile app for car rental.

BookCars is designed to work with multiple suppliers. Each supplier can manage his car fleet and bookings from the backend. BookCars can also work with only one supplier too.

From the backend, admin users can create and manage suppliers, cars, locations, users and bookings.

When an admin user creates a new supplier, the supplier will receive an automatic email for creating his account to access the backend so he can manage his car fleet and bookings.

From the frontend and the mobile app, users can sign up, search for available cars depending on pickup and drop-off points and time, choose a car and checkout.

<img src="https://bookcars.github.io/content/docker.png" alt="" width="220" />

BookCars can run in a Docker container. Follow this step by step [guide](https://github.com/aelassas/bookcars/wiki/Docker) to walk you through on how to build BookCars Docker image and run it in a Docker container.

# Features

* Supplier management
* Ready for one or multiple suppliers
* Car fleet management
* Booking management
* Client management
* Multiple payment methods (Credit Card, Pay Later)
* Multiple language support (English, French)
* Multiple pagination options (Classic pagination with next and previous buttons, infinite scroll)
* Responsive backend and frontend
* Native Mobile app for Android and iOS with single code base
* Push notifications

# Links

* [Installing](https://github.com/aelassas/bookcars/wiki/Installing)
* [Docker](https://github.com/aelassas/bookcars/wiki/Docker)
* [Build Mobile App](https://github.com/aelassas/bookcars/wiki/Build-Mobile-App)
* [Run from Source](https://github.com/aelassas/bookcars/wiki/Run-from-Source)
* [Documentation](https://github.com/aelassas/bookcars/wiki)

# Overview

In this section, you'll see the main pages of the frontend, the backend and the mobile app.

## Frontend

From the frontend, the user can search for available cars, choose a car and checkout.

Below is the main page of the frontend where the user can choose pickup and drop-off points and time, and search for available cars.

![Frontend](https://github.com/aelassas/bookcars/blob/main/screenshots/frontend-1.png?raw=true)

Below is the search result of the main page where the user can choose a car for rental.

![Frontend](https://github.com/aelassas/bookcars/blob/main/screenshots/frontend-2.png?raw=true)

Below is the checkout page where the user can set rental options and checkout. If the user is not registered, he can checkout and register at the same time. He will receive a confirmation and activation email to set his password if he is not registered yet.

![Frontend](https://github.com/aelassas/bookcars/blob/main/screenshots/frontend-3.png?raw=true)

Below is the sign in page.

![Frontend](https://github.com/aelassas/bookcars/blob/main/screenshots/frontend-4.png?raw=true)

Below is the sign up page.

![Frontend](https://github.com/aelassas/bookcars/blob/main/screenshots/frontend-5.png?raw=true)

Below is page where the user can see and manage his bookings.

![Frontend](https://github.com/aelassas/bookcars/blob/main/screenshots/frontend-6.png?raw=true)

Below is the page where the user can see a booking in detail.

![Frontend](https://github.com/aelassas/bookcars/blob/main/screenshots/frontend-7.png?raw=true)

That's it. That's the main pages of the frontend.

## Mobile App

<div>
  <p style="float: left; width: 100%"> 
From the mobile app, the user can search for available cars, choose a car and checkout.

The user can also receive push notifications, if the status of his booking is updated.

Below is the main page of the mobile app where the user can choose pickup and drop-off points and time, and search for available cars.
  </p>
  <img src="https://github.com/aelassas/bookcars/blob/main/screenshots/mobileapp-1.jpg?raw=true" alt="" width="200" style="float: left; margin: 5px"/>
  <img src="https://github.com/aelassas/bookcars/blob/main/screenshots/mobileapp-2.jpg?raw=true" alt="" width="200" style="float: left; margin: 5px"/>
  <img src="https://github.com/aelassas/bookcars/blob/main/screenshots/mobileapp-3.jpg?raw=true" alt="" width="200" style="float: left; margin: 5px"/>

  <p> 
  Below is the search result of the main page where user can choose a car for rental and checkout pages.
  </p>
  <img src="https://github.com/aelassas/bookcars/blob/main/screenshots/mobileapp-4.jpg?raw=true" alt="" width="200" style="float: left; margin: 5px"/>
  <img src="https://github.com/aelassas/bookcars/blob/main/screenshots/mobileapp-5.jpg?raw=true" alt="" width="200" style="float: left; margin: 5px"/>
  <img src="https://github.com/aelassas/bookcars/blob/main/screenshots/mobileapp-6.jpg?raw=true" alt="" width="200" style="float: left; margin: 5px"/>
  <img src="https://github.com/aelassas/bookcars/blob/main/screenshots/mobileapp-7.jpg?raw=true" alt="" width="200" style="float: left; margin: 5px"/>
  <p> 
  Below are sign in and sign up pages.
  </p>
  <img src="https://github.com/aelassas/bookcars/blob/main/screenshots/mobileapp-8.jpg?raw=true" alt="" width="200" style="float: left; margin: 5px"/>
  <img src="https://github.com/aelassas/bookcars/blob/main/screenshots/mobileapp-9.jpg?raw=true" alt="" width="200" style="float: left; margin: 5px"/>
  <img src="https://github.com/aelassas/bookcars/blob/main/screenshots/mobileapp-10.jpg?raw=true" alt="" width="200" style="float: left; margin: 5px"/>
  <p style="float: left; width: 100%"> 
  Below are the pages where the user can see and manage his bookings.
  </p>
  <img src="https://github.com/aelassas/bookcars/blob/main/screenshots/mobileapp-11.jpg?raw=true" alt="" width="200" style="float: left; margin: 5px"/>
  <img src="https://github.com/aelassas/bookcars/blob/main/screenshots/mobileapp-12.jpg?raw=true" alt="" width="200" style="float: left; margin: 5px"/>
  <img src="https://github.com/aelassas/bookcars/blob/main/screenshots/mobileapp-13.jpg?raw=true" alt="" width="200" style="float: left; margin: 5px"/>
  <img src="https://github.com/aelassas/bookcars/blob/main/screenshots/mobileapp-14.jpg?raw=true" alt="" width="200" style="float: left; margin: 5px"/>
  <img src="https://github.com/aelassas/bookcars/blob/main/screenshots/mobileapp-15.jpg?raw=true" alt="" width="200" style="float: left; margin: 5px"/>
  <p> 
  Below are the pages where the user can update his profile information, change his password and see his notifications.
  </p>
  <img src="https://github.com/aelassas/bookcars/blob/main/screenshots/mobileapp-16.jpg?raw=true" alt="" width="200" style="float: left; margin: 5px"/>
  <img src="https://github.com/aelassas/bookcars/blob/main/screenshots/mobileapp-17.jpg?raw=true" alt="" width="200" style="float: left; margin: 5px"/>
  <img src="https://github.com/aelassas/bookcars/blob/main/screenshots/mobileapp-18.jpg?raw=true" alt="" width="200" style="float: left; margin: 5px"/>
  <img src="https://github.com/aelassas/bookcars/blob/main/screenshots/mobileapp-19.jpg?raw=true" alt="" width="200" style="float: left; margin: 5px"/>
</div>

That's it for the main pages of the mobile app.

## backend
BookCars is supplier oriented. This means that there are three types of users:

* Admin: He has full access to backend. He can do everything.
* Supplier: He has restricted access to backend. He can only manage his cars and bookings.
* User: He has only access to frontend and mobile app. He cannot access the backend.

BookCars is designed to work with multiple suppliers. Each supplier can manage his car fleet and bookings from the backend. BookCars can also work with only one supplier too.

From the backend, the admin user can create and manage suppliers, cars, locations, users and bookings.

When the admin user creates a new supplier, the supplier will receive an automatic email for creating his account to access the backend so he can manage his car fleet and bookings.

Below is the sign in page of the backend.

![backend](https://github.com/aelassas/bookcars/blob/main/screenshots/backend-1.png?raw=true)

Below is the dashboard page of the backend where admins and suppliers can see and manage bookings.

![backend](https://github.com/aelassas/bookcars/blob/main/screenshots/backend-2.png?raw=true)

Below is the page where car fleet is displayed and can be managed.

![backend](https://github.com/aelassas/bookcars/blob/main/screenshots/backend-3.png?raw=true)

Below is the page where admins and suppliers can create new cars by providing an image and car info. 

![backend](https://github.com/aelassas/bookcars/blob/main/screenshots/backend-4.png?raw=true)

Below is the page where admins and suppliers can edit cars.

![backend](https://github.com/aelassas/bookcars/blob/main/screenshots/backend-5.png?raw=true)

Below is the page where admins can manage platform users.

![backend](https://github.com/aelassas/bookcars/blob/main/screenshots/backend-6.png?raw=true)

Below is the page where to edit bookings.

![backend](https://github.com/aelassas/bookcars/blob/main/screenshots/backend-7.png?raw=true)

That's it. That's the main pages of the backend.

# Architecture

This section describes the software architecture of BookCars including the API, the frontend, the mobile app and the backend.

BookCars API is built with Node.js, Express and MongoDB.

BookCars backend and frontend are built with Node.js, React and MUI.

BookCars mobile app is built with React Native and Expo.

## API

<p align="center">
  <img src="https://bookcars.github.io/content/bookcars-architecture.drawio.png?raw=true" alt="" width="500" />
</p>

BookCars API exposes all BookCars functions needed for the backend, the frontend and the mobile app. The API follows the MVC design pattern. JWT is used for authentication. There are some functions that need authentication and others that does not need authentication.

* *./api/models/* folder contains MongoDB models.
* *./api/routes/* folder contains Express routes.
* *./api/controllers/* folder contains controllers.
* *./api/middlewares/* folder contains middlewares.
* *./api/server.js* is the main server where database connection is established and routes are loaded.
* *./api/app.js* is the main entry point of BookCars API.

## Frontend

The frontend is a web application built with Node.js, ReactJS and MUI. From the frontend the user can search for available cars depending on pickup and drop-off locations, dates and time booking. He can then select his booking options and finally checkout.

* *./frontend/assets/* folder contains CSS and images.
* *./frontend/pages/* folder contains ReactJS pages.
* *./frontend/components/* folder contains ReactJS components.
* *./frontend/services/* contains BookCars API client services.
* *./frontend/App.js* is the main ReactJS App that contains routes.
* *./frontend/index.js* is the main entry point of the frontend.

## Mobile App

BookCars provides a native mobile app for Android and iOS. The mobile app is built with React Native and Expo. Like for the frontend, the mobile app allows the user to search for available cars depending on pickup and drop-off locations, dates and time booking. He can then select his booking options and finally checkout.

The user receives push notifications when his bookings are updated. Push notifications are built with Node.js, Expo Server SDK and Firebase.

* *./mobile/assets/* folder contains images.
* *./mobile/screens/* folder contains main pages.
* *./mobile/components/* folder contains React Native components.
* *./mobile/services/* contains BookCars API client services.
* *./mobile/App.js* is the main React Native App.
* *./mobile/index.js* is the main entry point of the mobile app.

## backend

The backend is a web application built with Node.js, ReactJS and MUI. From the backend, the admin user can create and manage suppliers, cars, locations, users and bookings. When the admin user creates a new supplier, the supplier will receive an automatic email for creating his account to access the backend so he can manage his car fleet and bookings.

* *./backend/assets/* folder contains CSS and images.
* *./backend/pages/* folder contains ReactJS pages.
* *./backend/components/* folder contains ReactJS components.
* *./backend/services/* contains BookCars API client services.
* *./backend/App.js* is the main ReactJS App that contains routes.
* *./backend/index.js* is the main entry point of the backend.
