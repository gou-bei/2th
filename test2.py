import requests
url = "https://news.hqu.edu.cn/hdyw.htm"
r = requests.get(url)
r.encoding = "utf-8"
from bs4 import BeautifulSoup
soup = BeautifulSoup(r.text)
for i in range(1,10):
    news_id = "line_u11_" + str(i)
    news_url = "https://news.hqu.edu.cn/" + soup.select(f"li[id = {news_id} ] a")[0].get("href")
    title = soup.select(f"li[id= {news_id} ] h3")[0].get_text()
    print(f"{i}.{title}")
    print(news_url)
    print()