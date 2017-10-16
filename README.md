# [UMD.io](http://umd.io/) &middot; ![term](https://img.shields.io/badge/term-Fall_2017-brightgreen.svg) [![license MIT](https://img.shields.io/github/license/mashape/apistatus.svg)](./LICENSE) [![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](CONTRIBUTING.md#pull-requests)

UMD.io is an open API for the University of Maryland. The main purpose is to allow developers to build awesome tools and projects. In turn, developers can improve the University of Maryland with the things they build.

## Resources

* [Docs](http://umd.io/)
* [Contributing](CONTRIBUTING.md)

## License

We use the [MIT License](./LICENSE) - do what you want, but don't hold us liable.

## Setting Up Your Environment With Docker
1. Install docker
2. Install docker-compose
3. Run `docker-compose up`
   * You might need to run docker-related commands with sudo if you're a linux user
   * When working with the database over docker, you need to specify the environment variable
     `MONGO_RUBY_DRIVER_HOST=mongodb`
