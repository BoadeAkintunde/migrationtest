from data import data
import random

followers_A = 0
followers_B = 0

def sort_a():
    global followers_A
    check = random.choice(range(len(data) - 1))
    line = (data[check])
    value_name = line['name']
    profession = line['description']
    country = line['country']
    followers_A = line['follower_count']
    return f"{value_name}, a {profession}, from {country}."


def sort_b():
    global followers_B
    check = random.choice(range(len(data) - 1))
    line = (data[check])
    value_name = line['name']
    profession = line['description']
    country = line['country']
    followers_B = line['follower_count']
    return f"{value_name}, a {profession}, from {country}."


def compare(A, B):
    if A > B:
        return A
    else:
        return B


game_over = False
score = 0
winning_line = ""
result = 0
while not game_over:
    if score != 0:
        option_a = winning_line
        followers_A = result
        option_b = sort_b()
    else:
        option_a = sort_a()
        option_b = sort_b()

    if option_a == option_b:
        option_b = sort_b()

    print(f"Compare A: {option_a}")
    print(followers_A)
    print(f"Compare B: {option_b}")
    print(followers_B)
    user_input = input("Who has more followers? Type 'A' or 'B': ")
    if user_input == 'A' or user_input == 'a':
        user_input = followers_A
        winning_line = option_a
    elif user_input == 'B' or user_input == 'b':
        winning_line = option_b
        user_input = followers_B
    else:
        print("invalid input")
    result = compare(A=followers_A, B=followers_B)
    print(result)
    if user_input == result:
        score += 1
        option_a = winning_line
        print(f"Yes you got it! your score is {score}")
    else:
        game_over = True
        print("no")