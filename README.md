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

## Setting up your environment variables with Figaro
1. We use Figaro to manage environment variables, like api keys
2. Create a file called `config/application.yml` under the root directory
3. Variables defined here are automatically loaded as environment variables into the app

### Configuring Open Weather Map
To get the weather endpoint working, you need to provide an API key for Open Weather Map in the `config/application.yml` file
1. [Obtain an api key](http://openweathermap.org/appid)
2. Add the api key to the `config/application.yml` file
    * OWM_API_KEY: "my_api_key"