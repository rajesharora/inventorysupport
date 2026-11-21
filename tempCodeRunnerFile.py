@app.route('/revenue_dashboard')
def revenue_dashboard():
    cursor = mysql.connection.cursor()
    cursor.execute("SELECT * FROM revenuetype")
    revenues = cursor.fetchall()
    cursor.close()
    
    print(revenues)  # Debug: print fetched data
    
    return render_template('revenue_dashboard.html', revenues=revenues)