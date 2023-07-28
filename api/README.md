It all starts with ".env.example".
This file has the statically defined parameters used by other files to configure the whole API service.

When NPM CI (clean install) is called, it looks in the "package-lock.json" first for all the needed packages to install and then in "package.json" is pointed to "app.js" for the application's construction parameters.

The "app.js" file mainly defines HTTPS or HTTP configuration and then pulls in the "server.js" file to get the app's __:

- database connection settings
- HTTP / HTTPS communication settings
- Routes to use
- Language
- Error Handling
- Cross Origin Request settings
- Parsing Methods
- Response Body Cmpression
- Cache Policy