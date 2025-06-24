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
   
2. **Fetch Dart packages**

   ```bash
   dart pub get

3. **Compile Dart to JavaScript**
   ```bash
   cd docs 
   dart compile js -O2 -o main.dart.js main.dart

4. **Serve the docs/ folder**:
   ```bash
   npm install -g http-server
   http-server -c-1

5. **Open your browser at http://localhost:8080**
