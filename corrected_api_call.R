library(httr)

url <- "https://rewriter-paraphraser-text-changer-multi-language.p.rapidapi.com/rewrite"

payload <- "{\r
    \"language\": \"en\",\r
    \"strength\": 3,\r
    \"text\": \"Rewriting text is fun!\"\r
}"

encode <- "json"

# Replace ###### with your API key
response <- VERB("POST", url, body = payload, add_headers(`x-rapidapi-host` = 'rewriter-paraphraser-text-changer-multi-language.p.rapidapi.com', `x-rapidapi-key` = '######'), content_type("application/json"), encode = encode)

tmp <- content(response, "parsed")
tmp$rewrite
