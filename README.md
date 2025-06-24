# Preamble Parser

A simple web app that counts how many words in the U.S. Constitution’s Preamble:

- start with **t**  
- end with **e**  
- both start with **t** and end with **e**

Built with Dart + plain HTML/CSS (no Flutter).

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
Fetch Dart packages

bash
Copy
Edit
dart pub get
Compile Dart to JavaScript

bash
Copy
Edit
dart compile js -O2 -o web/main.dart.js web/main.dart
Serve the web/ folder

VS Code Live Server

Install the “Live Server” extension

Right-click web/index.html → Open with Live Server

Node.js

bash
Copy
Edit
npm install -g http-server
cd web
http-server -c-1
Python

bash
Copy
Edit
cd web
python -m http.server 8080
Open your browser at http://localhost:8080
