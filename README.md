# Preamble Parser

*Live Demo:* https://granuels.github.io/Code-Test/

A simple web app that counts how many words in the U.S. Constitution’s Preamble:

- start with **t**  
- end with **e**  
- both start with **t** and end with **e**

Built with Dart (compiled to JavaScript), plain HTML and CSS.

---

## Features

1. **Static Preamble** displayed on load  
2. **Parse** button to count words per criterion  
3. **Reset** button to clear counts and allow custom input  
4. Responsive, frosted-glass UI over a sunset background

---

## Prerequisites

- Dart SDK ≥ 3.0  
- Git  
- (Optional) Node.js or Python if you want a simple HTTP server

---

## Getting Started

1. **Clone the repo**  
   ```bash
   git clone https://github.com/<your-username>/Code-Test.git
   cd Code-Test
   
2. **Fetch Dart packages**

   ```bash
   dart pub get

3. **Compile Dart to JavaScript**
   ```bash
   cd docs 
   dart compile js -O2 -o main.dart.js main.dart

4. **Serve the docs/ folder**:
   - **VS Code Live Server** (no extra SDKs):
     1. Install the “Live Server” extension.  
     2. Open the `docs/` folder in VS Code.  
     3. Right-click `index.html` → **Open with Live Server**.  

   - **Node.js** (if installed):
     ```bash
     npm install -g http-server
     cd docs
     http-server -c-1
     ```  
   - **Python** (if you have Python but not Node):
     ```bash
     cd docs
     python -m http.server 8080
     # or on Windows:
     py -3 -m http.server 8080
     ```  
   

5. **Open your browser at http://localhost:8080**

## Running Tests
This project includes two basic unit tests for the parsing logic.

1. Make sure you are in the project root (where `pubspec.yaml` file lives)
   
2. Fetch dev dependencies:
   ```bash
   dart pub get

3. Run the Tests:
   ```bash
   dart test


> **See [DOCUMENTATION.md](DOCUMENTATION.md) for in‐depth implementation notes and challenges.**
