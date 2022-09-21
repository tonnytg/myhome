#MyHome

Home to manage all information about external APIs, services, and other stuff.
This project is intended to be used as a template for other projects.
It is possible plug and play application to extend the project.

##Features

* [ ] API Documentation
* [ ] API Monitoring
* [ ] API Logging

##Installation

Build image

    `docker build -t name:tag .`


Run image

    `docker run -it --rm -d -p 8081:80 --name web name:tag`


Access http://localhost:8081

###Requirements

  nodejs > 16
  container to build image
