mots = 'FLORES ASTRILD FLORES NOIRCIR CLAPET POULAIN CREPES COFFRET HANSES POIGNET'
a = 0
b = len(mots)
tutu = ''
for i in range(0, int(len(mots)/2)):
    if mots[i] == ' ':
        tutu = tutu + mots[abs(a-b)]
    a = a + 2
    b = b - 1
print(tutu)