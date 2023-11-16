
# from turtle import Turtle, Screen
#
# timmy = Turtle()
# my_screen = Screen()
# my_screen.canvheight


from prettytable import PrettyTable

table = PrettyTable()
table.add_column("Pokemon Name", ["Pikachu", "Squirtle", "Charmander"])
table.add_column("Type", ["Electric", "Water", "Fire"])
table.align = "l"
print(table)