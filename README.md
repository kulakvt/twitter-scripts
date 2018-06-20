# Twitter Scripts

This is a repository to share scripts I use to conduct research on Twitter. I will build this out as I am able. I hope you can use some of these resources in your own work. I am not assuming much prior experience with digital methods, so I will try my best to provide documentation that is both thorough and simple. I will begin with some background on accessing Twitter programatically.

## Twitter API Access

You can conduct some Twitter research, especially pilot projects and qualitative studies, by accessing a Twitter account through the standard GUI, or [graphical user interface](https://en.wikipedia.org/wiki/Graphical_user_interface). This is what you see when you log into Twitter on the web or using an app. But if you'd like to gather more data either because you'd like to build an archive and use your own tools to index and code or because you'd like to apply computer-assisted or quantitative methods, you will want to access Twitter through the API, or [application programming interface](https://en.wikipedia.org/wiki/Application_programming_interface).

### What is an API?

While a graphical interface can be great for most endusers, graphics tend to get in the way if you are interested in studying large amounts of messages or building an archive. Application programming interfaces provide a way around more resource-intensive graphical interfaces. An API responds to specific queries, called requests, using striped-down file formats that computer programming languages can easily parse such as [XML](https://www.w3.org/XML/) or [JSON](https://www.json.org/).

APIs for popular services often have wrappers. A wrapper is a set of predefined methods that make accessing standard information from the API easier. Wrappers are provided in different programming and scripting languages and often take the form of libraries, modules, or packages which can be imported into your own programs and called as needed. Instead of writing your own API requests, you can let the wrapper do the work for you and return only that information which you are interested in.

### The Twitter API

For better or for worse, one reason that Twitter is a popular site for social media researchers is because it has a very robust, well documented, and well supported API. Some social media sites, like Facebook, have taken steps to restrict API access. This is often framed as a privacy feature, but in general restricting API access helps companies commodify user information. Twitter, on the other hand, has maintained its API.

For those who can afford it, the premium API offers complete access to Twitter content and a number of indexing and filtering options. But the free API can still be useful to researchers. The number of calls is limited along with the timeframe of searches. If an API request returns more information than the API limitations, it will return a random selection of posts rather than a complete collection matching your query. These are limitations of the free API, but they are useful for tracking events in real time, especially smaller events where the number of tweets is in the thousands.

### Accessing the Twitter API

If you have a Twitter account, you can create credentials to access the standard Twitter API. You will need to use these credentials when preparing scripts that query Twitter and download tweets. In general, you will need the following information to connect to the API:

- API Key
- API Secret
- Access Token
- Access Secret

This is a good primer on [the Twitter API](http://socialmedia-class.org/twittertutorial.html) that describes how to get keys and tokens as well as demonstrates how to implement the API using a Python wrapper.

## R

I primarily use R Studio to write and run R scripts. Please note the libraries each script uses and ensure that you have them installed. For API wrapper libraries, you will need to complete the steps for API access above and add them to the appropriate location of each script.

## Python

I will add Python scripts in a future update.
