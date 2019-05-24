# Kubernetes Configuration for Scheduler

Visit the App - [https://scheduler.ritwiksaha.com](https://scheduler.ritwiksaha.com) (Currently hosted on AWS)

# Services

The application has been hosted on a **Kubernetes cluster**. Here's a very simple design of the system. This contains an **API-server**, a **Rendering-server** (renders a react app), a **MongoDB database** (uses PVC to store data), and a **Redis server** (for data caching, excluded in v2).

<img  style="float: right;"  src="https://gitlab.com/ritwik310/project-documents/raw/master/Scheduler/Scheduler-Microservices-Mockup-0.png">

> **Note:** Currently hosted on AWS Elastic Beanstalk (Free Tier), as it has no commercial usage.

# App Details

You can find the **Source-code** for this application in this [Github Repository](https://github.com/ritwik310/scheduler) 

The repository contains 3 main directories,  **client**,  **server**  &  **nginx**. The  **client**  contains necessary files to run a  **Docker**  container for the client side of the application, a server-side rendered  **React**  app that uses  **GraphQL**  for data-queries and communicates via  **docker-compose**  to the  **API-Server**  in development.

This brings us to the  **server**  directory. Here we are running a  **Node/Express/GraphQL**  server in a  **Docker**  container. It uses  **MongoDB**  for writing & reading data, and that also runs inside a container and uses  **persistent volumes (Kubernetes)**  to store data in production.

And, the  **nginx**  directory contains configuration for running an  **Nginx server**  in a container for mainly routing management in development. Though, in production (Kubernetes) **nginx** doesn't do anything. It's an **ingress-service** that takes care of routing.

View Source-code for the App - [https://github.com/ritwik310/scheduler](https://github.com/ritwik310/scheduler)
