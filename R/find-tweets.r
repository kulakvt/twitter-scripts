# Created Wed Jun 20 16:17:22 EDT 2018
# Author: Andrew Kulak

# This script connects to the Twitter API, searches Twitter for a keyword,
# places the tweets in a dataframe, and exports them to a CSV. This script
# can be combined with other scripts for further analysis in R or run on its
# own to export tweets for use in other applications.

# The twitteR library is a Twitter API wrapper for R
# You may need to install this first using the following:
# install.packages("twitteR")
library(twitteR)

# This sets the working directory where any output files will be saved
setwd("")

# These are variables which hold your API credentials
# Find more info at https://developer.twitter.com/en/docs/basics/getting-started
apiKey <-  "" # Set this to your API Kkey from Twitter
apiSecret <- "" # Set this to your API secret from Twitter
accessToken <- "" # Set this to your access token from Twitter
accessSecret <- "" # Set this to your access secret from Twitter

# Change these variables to define your search
keyword <- "#example" # This is the term to search for
numTweets <- 5000 # This is the max number of tweets your search will return

# Sets up access to the Twitter API based on the above credentials
setup_twitter_oauth(apiKey, apiSecret, accessToken, accessSecret)

# Searches for tweets from within the last couple of weeks
tweets <- searchTwitter(keyword, n=numTweets, retryOnRateLimit=120)

# Places the tweets you gathered in a data frame, a standard R data structure
tweet.data.frame <- twListToDF(tweets)

# Write the full data frame to a CSV file with the specified name
write.csv(tweet.data.frame, file = "tweets.csv")
