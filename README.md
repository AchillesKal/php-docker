# PHP Docker

A [Docker](https://www.docker.com/)-based installer and runtime for PHP,
with [FrankenPHP](https://frankenphp.dev) and [Caddy](https://caddyserver.com/) inside!

![CI](https://github.com/AchillesKal/php-docker/workflows/CI/badge.svg)

## Getting Started

1. If not already done, [install Docker Compose](https://docs.docker.com/compose/install/) (v2.10+)
2. Run `docker compose build --no-cache` to build fresh images
3. Run `docker compose up --pull always -d --wait` to start the project
4. Open `https://lalhost` in your favorite web browser and [accept the auto-generated TLS certificate](https://stackoverflow.com/a/15076602/1352334)
5. Run `docker compose down --remove-orphans` to stop the Docker containers.

## Features

* Production, development and CI ready
* Just 1 service by default
* Blazing-fast performance thanks to [the worker mode of FrankenPHP](https://github.com/dunglas/frankenphp/blob/main/docs/worker.md) (automatically enabled in prod mode)
* [Installation of extra Docker Compose services](docs/extra-services.md) with Symfony Flex
* Automatic HTTPS (in dev and in prod!)
* Native [XDebug](docs/xdebug.md) integration
* Super-readable configuration

**Enjoy!**

## Docs

1. [Build options](docs/build.md)
2. [Using PHP Docker with an existing project](docs/existing-project.md)
3. [Support for extra services](docs/extra-services.md)
4. [Deploying in production](docs/production.md)
5. [Debugging with Xdebug](docs/xdebug.md)
6. [TLS Certificates](docs/tls.md)
7. [Using a Makefile](docs/makefile.md)
8. [Troubleshooting](docs/troubleshooting.md)

## License

PHP Docker is available under the MIT License.

## Credits
This project is a fork of [symfony-docker](https://github.com/dunglas/symfony-docker) trimmed and simplified for plain php use. Credits to [Kévin Dunglas](https://dunglas.fr) and [Maxime Helias](https://twitter.com/maxhelias).
