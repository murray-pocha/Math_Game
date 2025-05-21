# 🧠 Math Game (Two-Player CLI)

A simple two-player math quiz game built in Ruby and played in the terminal. Players take turns answering randomly generated addition questions. Each incorrect answer costs a life — the last player standing wins!

---

## 🎮 How It Works

- Two players start the game, each with 3 lives.
- They take turns answering basic addition questions.
- Each incorrect answer removes one life from the current player.
- The game ends when one or both players lose all their lives.
- A winner is declared, or a draw if both lose simultaneously.

---

## File Structure

| File           | Description |
|----------------|-------------|
| `main.rb`      | Entry point that starts the game |
| `game.rb`      | Main game logic and turn handling |
| `player.rb`    | Defines players, tracks name and lives |
| `question.rb`  | Generates random math questions and correct answers |
| `io_handler.rb`| Handles input/output to keep I/O separate from logic |

---

## Sample Gameplay

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
Ruby (version 2.6 or higher recommended)

Installation
Clone the repo:


git clone https://github.com/your-username/math_game.git
cd math_game
Run the game

ruby main.rb