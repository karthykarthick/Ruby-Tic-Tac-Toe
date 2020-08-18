<h3 align="center">Tic Tac Toe - Ruby</h3>

<div align="center">

[![Status](https://img.shields.io/badge/status-active-success.svg)](https://github.com/umairarshadbutt/TicTacToe-Ruby)
[![Github Issues](https://img.shields.io/badge/GitHub-Issues-orange)](https://github.com/umairarshadbutt/TicTacToe-Ruby/issues)
[![GitHub2 Pull Requests](https://img.shields.io/badge/GitHub-Pull%20Requests-blue)](https://github.com/umairarshadbutt/TicTacToe-Ruby/pulls)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](/LICENSE)
</div>
<p align="center">The main goal is to implement the main concepts of Object-Oriented Programming</p>

# Tic Tac Toe - Ruby Output

> The main goal is to implement the main concepts of Object-Oriented Programming

## Output
```ruby
Welcome to Tic Tac Toe
Please Enter Your Name(First Player): 
You are  welcome #{name1}, Your symbol is X
Please Enter Your Name(Second Player):
You are  welcome #{name2}, Your symbol is O
-------------
| a | b | c |
-------------
| d | e | f |
-------------
| g | h | i |
-------------

-------------
| X | O | O |
-------------
| O | X | f |
-------------
| X | h | X |
-------------

player #{name1} is the winner!
Do you want to rematch(y/n)?
yes
```
## Game Rules
- The game is rule based. Each player is going to choose a position out of 9 positions
- You have to type fisrt player name and press enter
- Then type the second player name and press enter
- To choose a position you have to type the corresponding charachter and press enter
- The game will check if the chosen position is valid or not
- If it's not valid (i.e already taken or not of the availabe positions) it will ask for another input
- If it's valid it will display the board with the chosen position replaced by the player's symbol
- Then it will be the next player's turn 
- Previous steps will repeate for the second player
- Turns will take places one after another till it reaches either winning or draw condition

### Winning conditions
- To have occupied a full row with same symbol (e.g X)
- To have occupied a column with same symbol (e.g X)
- To have occupied a full diagonal with same symbol (e.g X)

### Draw condition
- If none of the winning conditions was achieved then the game is a draw

## Built With

- Ruby


## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

- Text Editor (VSCode is suggested.)
- [Ruby](https://ruby-doc.org/downloads/)

### Setup

- Install [git](https://git-scm.com/downloads)
- Open Terminal
- Change directory to folder to download repository
- Use `cd <file-path>`
- Run `git clone https://github.com/karthykarthick/Ruby-Tic-Tac-Toe.git`
- Install [Ruby](https://ruby-doc.org/downloads/)
- Run `ruby main.rb`

To make any change,

- Open related file by using text editor.

## Authors

👤 **Umair Arshad**

- Github: [@kathykarthick](https://github.com/karthykarthick)
- Linkedin: [kathick-harimoorthy](https://www.linkedin.com/in/karthick-harimoorthy/)

## 🤝 Contributing

Contributions, issues and feature requests are welcome! Start by:

- Forking the project
- Cloning the project to your local machine
- `cd` into the project directory
- Run `git checkout -b your-branch-name`
- Make your contributions
- Push your branch up to your forked repository
- Open a Pull Request with a detailed description to the development branch of the original project for a review


## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Project originally taken from The Odin Project
- Project inspired by Microverse Program


## 📝 License

This project is [MIT](LICENSE) licensed.

