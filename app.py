from flask import Flask, render_template
import pymysql
pymysql.install_as_MySQLdb()
app = Flask(__name__)

conn = pymysql.Connect(
        host = '127.0.0.1',
        port = 3306,
        user = 'root',
        passwd = '78gxtw23.ysq',
        db = 'hdxw',
        charset = 'utf8')

cursor = conn.cursor()
sql = "select * from news"
cursor.execute(sql)
results = cursor.fetchall()

list_title = []
list_url = []

for row in results:
    title = row[0]
    url = row[1]
    list_title.append(title)
    list_url.append(url)
cursor.close()
conn.close()

@app.route('/hdxw')
def index():
    title = list_title
    url = list_url
    return render_template('index.html',
                           title = title,
                           url = url)
if __name__ == '__main__':
    app.run(host="0.0.0.0")