import requests
url = "https://news.hqu.edu.cn/hdyw.htm"
r = requests.get(url)
r.encoding = "utf-8"
from bs4 import BeautifulSoup
soup = BeautifulSoup(r.text)
list_url = []
list_title = []
for i in range(1,10):
    news_id = "line_u11_" + str(i)
    news_url = "https://news.hqu.edu.cn/" + soup.select(f"li[id = {news_id} ] a")[0].get("href")
    title = soup.select(f"li[id= {news_id} ] h3")[0].get_text()
    list_url.append(news_url)
    list_title.append(title)
from flask import Flask, render_template

app = Flask(__name__)

@app.route('/hdxw')
def index():
    title = list_title
    url = list_url
    return render_template('test.html',
                           title = title,
                           url = url)
if __name__ == '__main__':
    app.run(host="0.0.0.0")