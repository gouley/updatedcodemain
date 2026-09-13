import random

class Skill:
    def __init__(self, name, power):
        self.name = name
        self.power = power

class Player:
    def __init__(self, name):
        self.name = name
        self.level = 1
        self.hp = 30
        self.max_hp = 30
        self.skills = [Skill("Coup de base", 1)]
        self.inventory = []
        self.exp = 0

    def attack(self, enemy):
        roll = random.randint(1, 20)
        skill = random.choice(self.skills)
        damage = roll * skill.power
        print(f"{self.name} utilise {skill.name} et inflige {damage} dégâts !")
        enemy.hp -= damage

    def loot(self, item):
        print(f"{self.name} trouve {item} !")
        self.inventory.append(item)

    def gain_exp(self, amount):
        self.exp += amount
        print(f"{self.name} gagne {amount} XP.")
        if self.exp >= self.level * 20:
            self.level_up()

    def level_up(self):
        self.level += 1
        self.max_hp += 10
        self.hp = self.max_hp
        new_skill = Skill(f"Skill lvl {self.level}", self.level)
        self.skills.append(new_skill)
        print(f"{self.name} passe au niveau {self.level} ! Nouvelle compétence : {new_skill.name}")

class Enemy:
    def __init__(self, name, level):
        self.name = name
        self.level = level
        self.hp = 10 + level * 5

    def attack(self, player):
        roll = random.randint(1, 20)
        damage = roll * self.level
        print(f"{self.name} attaque et inflige {damage} dégâts !")
        player.hp -= damage

def main():
    player = Player("Héros")
    enemies = [Enemy("Gobelin", 1), Enemy("Orc", 2), Enemy("Dragon", 5)]
    loot_table = ["Potion", "Épée magique", "Armure", "Anneau"]

    for enemy in enemies:
        print(f"\nUn {enemy.name} apparaît !")
        while enemy.hp > 0 and player.hp > 0:
            player.attack(enemy)
            if enemy.hp > 0:
                enemy.attack(player)
            print(f"{player.name}: {player.hp} PV | {enemy.name}: {enemy.hp} PV")
        if player.hp <= 0:
            print("Game Over !")
            break
        else:
            loot = random.choice(loot_table)
            player.loot(loot)
            player.gain_exp(enemy.level * 10)
            player.hp = min(player.max_hp, player.hp + 5)  # Heal a bit after fight

    if player.hp > 0:
        print(f"\nVictoire ! Niveau final : {player.level}, Inventaire : {player.inventory}")

if __name__ == "__main__":
    main()