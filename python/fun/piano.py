import pygame
import sys
from enum import Enum

# Initialiser pygame mixer
pygame.mixer.init()

class Note(Enum):
    C = 261.63
    D = 293.66
    E = 329.63
    F = 349.23
    G = 391.99
    A = 440.00
    B = 493.88
    C_HIGH = 523.25

# Mapping clavier AZERTY -> notes
KEYBOARD_MAP = {
    'a': Note.C,
    'z': Note.D,
    'e': Note.E,
    'r': Note.F,
    't': Note.G,
    'y': Note.A,
    'u': Note.B,
    'i': Note.C_HIGH,
    'q': Note.C,
    's': Note.D,
    'd': Note.E,
    'f': Note.F,
    'g': Note.G,
    'h': Note.A,
    'j': Note.B,
    'k': Note.C_HIGH,
}

# Touches blanches et noires
WHITE_KEYS = ['a', 'z', 'e', 'r', 't', 'y', 'u', 'i']
BLACK_KEYS = ['q', 's', 'd', 'f', 'g', 'h', 'j', 'k']

def generate_sine_wave(frequency, duration=0.3, sample_rate=22050):
    """Génère une onde sinusoïdale pour un son"""
    import math
    frames = int(duration * sample_rate)
    arr = [0] * frames
    for i in range(frames):
        arr[i] = int(32767 * 0.3 * math.sin(2.0 * math.pi * frequency * i / sample_rate))
    return pygame.sndarray.make_sound(bytearray(arr))

def play_note(frequency):
    """Joue une note à partir d'une fréquence"""
    sound = generate_sine_wave(frequency)
    sound.play()

def draw_piano():
    """Affiche l'interface ASCII du piano"""
    print("\n" + "="*80)
    print("╔" + "═"*78 + "╗")
    print("║" + " "*78 + "║")
    print("║" + "  PIANO AZERTY - Appuyez sur les touches pour jouer".center(78) + "║")
    print("║" + " "*78 + "║")
    print("╚" + "═"*78 + "╝")
    print("\n")
    
    # Afficher les touches blanches et noires
    print("  Touches blanches:  A  Z  E  R  T  Y  U  I")
    print("  Touches noires:    Q  S  D  F  G  H  J  K")
    print("\n")
    
    # Dessiner le piano ASCII
    draw_ascii_piano()
    print("\n" + "="*80)
    print("Appuyez sur les touches ou tapez 'quit' pour quitter")
    print("="*80 + "\n")

def draw_ascii_piano():
    """Dessine une représentation ASCII du piano"""
    # Lignes du haut (touches noires)
    line1 = "  "
    for i, key in enumerate(WHITE_KEYS):
        line1 += "┌─────┐     "
    print(line1)
    
    # Touches blanches avec touches noires au-dessus
    line2 = "  "
    for i, key in enumerate(WHITE_KEYS):
        if i < len(BLACK_KEYS) and BLACK_KEYS[i] != '':
            line2 += f"│{BLACK_KEYS[i].upper():^5}│  ╱█╲  "
        else:
            line2 += "│     │     "
    print(line2)
    
    # Lignes du milieu
    line3 = "  "
    for key in WHITE_KEYS:
        line3 += "│ " + key.upper() + "   │  "
    print(line3)
    
    # Lignes du bas
    line4 = "  "
    for key in WHITE_KEYS:
        line4 += "└─────┘     "
    print(line4)

def main():
    """Boucle principale"""
    draw_piano()
    
    print("Piano prêt! Commencez à jouer...\n")
    
    try:
        while True:
            user_input = input("Note (ou 'quit'): ").strip().lower()
            
            if user_input == 'quit':
                print("Au revoir!")
                break
            
            if user_input in KEYBOARD_MAP:
                note = KEYBOARD_MAP[user_input]
                play_note(note.value)
                key_type = "blanche" if user_input in WHITE_KEYS else "noire"
                print(f"  ♪ Touche {user_input.upper()} ({key_type}) - {note.name} ({note.value:.2f} Hz)")
            elif user_input:
                print(f"  ✗ Touche invalide: {user_input}")
    
    except KeyboardInterrupt:
        print("\n\nInterruption de l'utilisateur. Au revoir!")
    finally:
        pygame.mixer.quit()

if __name__ == "__main__":
    main()
