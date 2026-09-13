#EX 3.1
myword = 'Bonjour'
for lettre in myword : 
    print (lettre)


#EX 3.2  
myword = 'Bonjour'
for lettre in myword :
    print(lettre, end='')

#EX 4
print(' ')
prix_Ht = float(input("Quel est le prix Hors Taxe de l'article ?"))
nombre_Article = int(input("Quel est la quantité de cet article acheté ?"))
taux_TVA = 1.50
prix_TTC = (prix_Ht * nombre_Article) * taux_TVA
print("Le prix total de votre commande concernant", nombre_Article, "article(s) dont le prix unitaire est de", prix_Ht, "est de :", prix_TTC)
#EX5
