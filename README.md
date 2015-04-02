![Icons](./public/images/digital_goods_icons.png)

# Sample On Demand for Digital Goods Backend

This project serves as a simple backend designed to work with Klarna on Demand for Digital Goods.

The server itself is implemented in [Ruby](https://www.ruby-lang.org/en/) using [Sinatra](http://www.sinatrarb.com/). Even if you are not familiar with the language do not worry, as the code has been extensively documented. The file that contains the entirety of the server is [backend.rb](./backend.rb).

## Integration with the Klarna on Demand API
This sample backend interacts directly with Klarna's on Demand API, specifically for the purpose of authorizing and capturing orders. You can read more about the API [here](http://docs.inapp.apiary.io/).

## Running the server
If you wish to run the server, the first step is [installing Ruby](https://www.ruby-lang.org/en/documentation/installation/).

Once that's out of the way, open a terminal and run the following command:

```
gem install bundler
```

which will install [Bundler](http://bundler.io/), a dependency manager that will allow installing the project's dependencies. Still in the terminal, navigate to the project's directory and run:

```
bundle install
```

to install said dependencies.

The server is now ready to run. Simply point a terminal to the project's folder and run:

```
rackup
```

You can reach the server on [http://localhost:9292](http://localhost:9292).

## License
The sample backend is available under the Apache 2.0 license. See the [LICENSE](./LICENSE) file for more info.
