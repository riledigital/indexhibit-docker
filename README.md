# Dockerized Indexhibit

A simple Dockerized version of Indexhibit, created for educational purposes.

**Do not use this for production.** This Docker setup is created primarily for
educational purposes, for those curious to explore the history of Web CMS's.
These settings are the bare minimum to get Indexhibit running in a Docker
environment and have been created for zero disregard for the application's
security. You have been warned!

## Why Indexhibit?

Indexhibit is a content management system from the early 2000s that provided a
foundation for many artists' websites in the 2000s. It is remembered (and
imitated) for sporting a "index+exhibit" -style layout that was very popular
during its heyday in the mid-to-late 2000s, where Tumblr and Pinterest-esque
"masonry" grids were paired with a minimalist sidebar navigation to create an
uncluttered browsing experience that illuminated the artists' content—much in
the way that a well-placed accent light foregrounds a work in a physical
exhibition space. It provided a format for artists to exhibit archives of their
work on the Web, and probably had an large influence on modern content
management/Web design.

## Getting Started

- Clone this repo.

- Make sure you have Docker installed for your OS.

- Run `make build` to build the Docker images.

- Run `make start` to start the Docker containers.

- Docker will expose port `9095` to your host machine, so visit `localhost:9095`
  to access your site.

- Follow the Indexhibit install wizard for the full experience.
  [Watch a YouTube video of the Indexhibit install](https://www.youtube.com/watch?v=orv1qx6xyp0).
  Visit `http://localhost:9095/ndxzstudio/install.php` and follow the
  directions. The MySQL information is located in `docker-compose.yml`, under
  the env variables section of `db`.
