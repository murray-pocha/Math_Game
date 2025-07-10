# 🧠 Math Game (Two-Player CLI)

A simple two-player math quiz game built in Ruby and played entirely in the terminal. Players take turns answering randomly generated addition questions. Each incorrect answer costs a life — the last player standing wins!

---

## 🎮 How It Works

- Two players start with **3 lives each**
- Players take **turns** answering basic addition questions
- Each **wrong answer** costs the current player one life
- Game ends when **one or both players lose all their lives**
- A **winner is declared**, or a **draw** if both lose simultaneously

---

## 📁 File Structure

| File         | Description                                      |
|--------------|--------------------------------------------------|
| `main.rb`    | Entry point that starts the game                 |
| `game.rb`    | Manages game flow and turn logic                 |
| `player.rb`  | Defines player behavior and tracks lives         |
| `question.rb`| Generates random math questions and answers      |
| `io_handler.rb` | Handles input/output for clean separation     |

---

## 💡 Sample Gameplay

```shell
Welcome to the Math Game!
Player 1: What is 7 + 3?
✅ Correct!

Player 2: What is 5 + 8?
❌ Wrong! Player 2 loses a life.

...

Player 1 wins with 2 lives left!

🚀 Getting Started

Prerequisites
Ruby installed (v2.6 or higher recommended)

Installation & Running

git clone https://github.com/your-username/math_game.git
cd math_game
ruby main.rb

🛠 Troubleshooting

If you see an error like:

cannot load such file -- <some_file>

Make sure you're running the game from inside the correct folder (Math_Game) and that you’re using a Ruby version >= 2.6.

🧰 Built With
Ruby (Core Language Only)

No external gems required