import random

print("Welcome to number guessing game")
print("I am guessing a number between 1 and 100")
level = input("type 'y' for hard level and 'n' for easy level: ")
random_guess = random.randint(1, 100)
print(random_guess)
# guess = int(input("pick guess the number: "))

game_on = False
attempt = 0


def hard():
    global attempt
    if level == 'y':
        attempt = 5


def easy():
    global attempt
    if level == 'n':
        attempt = 10


if level == 'y':
    hard()
else:
    easy()
print(f"you have total number of {attempt} to begin with")

while not game_on:
    guess = int(input("pick guess the number: "))
    if guess > random_guess and attempt != 1:
        attempt -= 1
        print(f"too high, you have {attempt} attempt left")
    elif guess < random_guess and attempt != 1:
        attempt -= 1
        print(f"too low, you have {attempt} attempt left")
    else:
        game_on = True
        if attempt == 1:
            print("Good luck next time, you are out of attempts")
        else:
            print("Great! you got it right")

