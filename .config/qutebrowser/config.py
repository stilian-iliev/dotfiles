config.bind("J", "tab-prev")
config.bind("K", "tab-next")


c.url.searchengines = {"DEFAULT": "https://google.com/search?hl=en&q={}",
      "!d": "https://duckduckgo.com/?ia=web&q={}",
      "!gh": "https://github.com/search?o=desc&q={}&s=stars",
      "!w": "https://en.wikipedia.org/wiki/{}",
      "!yt": "https://www.youtube.com/results?search_query={}"
}

c.url.start_pages = ["https://www.google.com/"]

config.load_autoconfig()