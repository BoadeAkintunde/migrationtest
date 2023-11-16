from data import MENU, resources

water = 300
milk = 200
coffee = 100
money = 0

ordered_water = 0
ordered_milk = 0
ordered_coffee = 0

espresso = MENU['espresso']
espresso_cost = espresso['cost']
latte = MENU['latte']
latte_cost = espresso['cost']
cappuccino = MENU['cappuccino']
cappuccino_cost = espresso['cost']


def output():
    global water, milk, coffee
    water -= ordered_water
    coffee -= ordered_coffee
    milk -= ordered_milk
    return f"water: {water}ml \nmilk: {milk}ml \ncoffee: {coffee}g"


def cost():
    quarters = int(input("how many quarters? ")) * 0.25
    dimes = int(input("how many dimes? ")) * 0.10
    nickels = int(input("how many nickels? ")) * 0.05
    pennies = int(input("how many pennies? ")) * 0.01
    total = quarters + dimes + nickels + pennies
    return total


def order(checking):
    global ordered_water, ordered_milk, ordered_coffee
    ingredients = checking['ingredients']
    ordered_water = ingredients['water']
    ordered_coffee = ingredients['coffee']
    if checking == espresso:
        ordered_milk = 0
        return f"water: {water}ml\nmilk: {milk}ml \ncoffee: {coffee}g"
    else:
        ordered_milk = ingredients['milk']
        return f"water: {water}ml \nmilk: {milk}ml \ncoffee: {coffee}g"


user_choice = input("What would you like? (espresso/latte/cappuccino): ")

print(output())