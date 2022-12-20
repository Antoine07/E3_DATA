import mysql.connector
import json

config = {
    'user': 'root',
    'password': 'antoine',
    'host': '127.0.0.1',
    'database': 'school',
    'raise_on_warnings': True
}

url = '../Data/populations.json'

# Context manager 
with mysql.connector.connect(**config) as db:
    cursor = db.cursor()
    cursor.execute("TRUNCATE TABLE populations") 
    
    with open(url, 'r') as f:
        populations = json.load(f) 
        for pop in populations:
            id, name, relation = pop.values()
            query = f"INSERT INTO populations (user_id, name, relation) \
VALUES ({id}, '{name}', '{relation}') "
            cursor.execute(query)
        
        db.commit()
        
#         cursor.close()
#         db.close()

