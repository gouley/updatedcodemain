

# Exercice 1 : 
def table(n):
    return [n * i for i in range(1, 11)]

# Exemple
print("Exercice 1 :", table(5))  # [5, 10, 15, ..., 50]

# Exercice 2 : 
import math

def surface_disque(rayon):
    return math.pi * rayon ** 2

# Exemple
print("Exercice 2 :", surface_disque(3))  # 28.27...

# Exercice 3 :
def surface_anneau(rayon_interieur, rayon_exterieur):
    return surface_disque(rayon_exterieur) - surface_disque(rayon_interieur)

# Exemple
print("Exercice 3 :", surface_anneau(3, 5))  # 50.26...

# Exercice 4 : 
def volume_boite(longueur, largeur, hauteur):
    return longueur * largeur * hauteur

# Exemple : 
print("Exercice 4 :", volume_boite(3, 4, 5))  # 60

# Exercice 5 : 
def volume_boite_modifiee(*args):
    if len(args) == 1:
        return args[0] ** 3
    elif len(args) == 2:
        return args[0] * args[1] ** 2
    elif len(args) == 3:
        return args[0] * args[1] * args[2]
    else:
        raise ValueError("Nombre d'arguments invalide")

# Exemple
print("Exercice 5 :", volume_boite_modifiee(2))       # 8
print("Exercice 5 :", volume_boite_modifiee(2, 3))    # 18
print("Exercice 5 :", volume_boite_modifiee(2, 3, 4)) # 24

# Exercice 6 :
def f(x):
    return 27*x**3 - 27*x**2 - 18*x - 8

def image_f(x):
    return f(x)

# Exemple
print("Exercice 6 :", image_f(1))  # -26

# Exercice 7 : 
def maxi(a, b, c):
    return max(a, b, c)

# Exemple
print("Exercice 7 :", maxi(10, 5, 8))  # 10

# Exercice 8 : 
def index_max(liste):
    return liste.index(max(liste))

# Exemple
print("Exercice 8 :", index_max([5, 8, 2, 9, 6, 7]))  # 3

# Exercice 9 :
def jours_du_mois(mois):
    mois = mois.lower()
    if mois in ["janvier", "mars", "mai", "juillet", "août", "octobre", "décembre"]:
        return 31
    elif mois in ["avril", "juin", "septembre", "novembre"]:
        return 30
    elif mois == "février":
        return 28  # ou 29 si année bissextile, ici simplifié
    else:
        raise ValueError("Mois invalide")

# Exemple
print("Exercice 9 :", jours_du_mois("mars"))  # 31
print("Exercice 9 :", jours_du_mois("avril")) # 30

# Exercice 10 
def discriminant(a, b, c):
    return b**2 - 4*a*c

# Exemple
print("Exercice 10 :", discriminant(1, -3, 2))  # 1

# Exercice 11: 
def frac2dec(a, b, n):
    reste = a % b
    decimales = []
    for _ in range(n):
        reste *= 10
        chiffre = reste // b
        decimales.append(chiffre)
        reste = reste % b
    return decimales

# Exemple
print("Exercice 11 :", frac2dec(13, 7, 10))  # [8, 5, 7, 1, 4, 2, 8, 5, 7, 1]


# Exercice 12: 
def frac2dec2(a, b):
    reste = a % b
    restes_vus = []
    decimales = ""
    while reste != 0 and reste not in restes_vus:
        restes_vus.append(reste)
        reste *= 10
        decimales += str(reste // b)
        reste = reste % b
    return decimales

# Exemple
print("Exercice 12 :", frac2dec2(13, 7))  # "857142"


# Exercice 13: 
def bin2dec(s):
    valeur = 0
    n = len(s)
    for i in range(n):
        if s[i] == '1':
            valeur += 2**(n - 1 - i)
    return valeur

# Exemple
print("Exercice 13 :", bin2dec("101110"))  # 46


# Exercice 14:
def binary2decimal(s_int, s_frac):
    entiere = bin2dec(s_int)
    fractionnaire = 0
    for i in range(len(s_frac)):
        if s_frac[i] == '1':
            fractionnaire += 2**(-(i + 1))
    return (entiere, fractionnaire)

# Exemple
print("Exercice 14 :", binary2decimal("101110", "101"))  # (46, 0.625)


# Exercice 15 :
def ent_dec2bin(n):
    if n == 0: return "0"
    s = ""
    while n > 0:
        s = str(n % 2) + s
        n = n // 2
    return s

# Exemple
print("Exercice 15 :", ent_dec2bin(46))  # "101110"


# Exercice 16:
def d_dec2bin(d, n_max):
    s = ""
    for _ in range(n_max):
        d *= 2
        if d >= 1:
            s += "1"
            d -= 1
        else:
            s += "0"
        if d == 0: break
    return s

# Exemple
print("Exercice 16 :", d_dec2bin(0.375, 10))  # "011" 

# Exercice 17:
def decimal2binary(n, n_max):
    s_int = ent_dec2bin(n)
    d = n - int(n)
    s_frac = d_dec2bin(d, n_max)
    return (s_int, s_frac)
# Exemple   
print("Exercice 17 :", decimal2binary(46.375, 10))  # ("101110", "011")


