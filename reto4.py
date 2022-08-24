import json 
data = json.loads(input())
laminas =input()
total = 0
encontradas = []
for palabra in laminas.split():
  existe = 0
  try :
    existe = data[palabra]
    encontradas.append(palabra)
  except:
    existe = 0
  total = total + existe   

print(total) 
print('\n')
for lamina in range(len(encontradas)):
  print(encontradas[lamina], end=" ")