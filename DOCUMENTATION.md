# Preamble Parser — Implementation Notes

*Live Demo:* https://granuels.github.io/Code-Test/

## Features 

1. **Static Preamble Display**  
   - The U.S. Constitution’s Preamble is hard-coded into a `<textarea>`, and auto-resized to show all lines without manual scroll.
   - **Page Reload**: any page refresh will restore the original Preamble text (base case) before parsing.

2. **Three-Criteria Word Counts**  
   - **Begin with ‘t’**  
   - **End with ‘e’**  
   - **Both: start with‘t’ and end with ‘e’**  
   All counts update when the user clicks **Parse**.

3. **Reset Functionality**  
   - **Clears the Preamble field** (empties the textarea)  
   - **Resets all three counters** back to `0`  
   - Allows the user to type or paste new text before clicking **Parse** again

4. **Responsive Frosted-Glass UI**  
   - Centered translucent card over a blurred, full-window White House sunset background.  
   - Auto-grow text area up to a max height, then scroll.

5. **Easy Local & Hosted Deployment**  
   - Built with Dart (compiled to JavaScript), plain HTML and CSS. 
   - Out-of-the-box support for GitHub Pages via `/docs` folder.
  
6. **Unit Tests**
   - Two basic Dart tests validate `analyzePreamble()` for simple sentences and punctuation/casing.

---

## Challenges & Solutions

### 1. Seed vs. Reset on Load  
- **Problem:** I had an automatic call to `resetBtn.click()` in `main()`, which wiped out the hard-coded Preamble right when the page loaded.  
- **Solution:** Removed that initialization call so the Preamble remains on load. Now **Reset** only activates when the user clicks it, clearing both the textarea and the counters.

### 2. Serving the App Locally  
- **Problem:** Simply opening `index.html` via `file://` did not load CSS/JS correctly and triggered CORS issues.  
- **Solution:** A local HTTP server—VSCode Live Server, Python’s `http.server`, or Node’s `http-server`—so that all assets load over HTTP.

### 3. Automated Rebuilds During Development
- **Problem**: Every Dart change required a manual dart compile js … before testing in the browser.
- **Solution**: I set up webdev serve to rebuild on save, so I could iterate UI tweaks in real time.

### 3. Folder Layout vs. GitHub Pages  
- **Problem:** GitHub Pages do not serve from a `web/` folder by default.  
- **Solution:** Moved the entire `web/` directory into `docs/` (or root) and pointed GitHub Pages at that folder.

### 4. Word-Limit vs. Infinite Growth  
- **Problem:** Without a cap, very long pasted text would grow the textarea off-screen.  
- **Solution:**  
  - Added an `enforceWordLimit(el)` function to truncate input at a configurable maximum (e.g. 200 words).  
  - Combined with a CSS `max-height` and `overflow-y: auto`, this ensures a scrollbar appears once you exceed the safe display area.


---

## How to Read the Code

- **`lib/preamble_parser.dart`**  
  Contains `_cleanWords()` to normalize and split the text, and `analyzePreamble()` to return a map of the three counts.

- **`web/main.dart`**  
  Queries the DOM for buttons & spans, seeds the Preamble, wires up the **Parse** and **Reset** handlers, and calls the Dart parser.

- **`web/index.html`**  
  The single HTML entry point, includes the static `<textarea>` for the Preamble and the JS glue for `autoGrow` & `enforceWordLimit`.

- **`web/style.css`**  
  Defines the full-screen background reset, frosted-glass card, button styles, and responsive layout.

- **`test/preamble_parser_test.dart`**  
  2 unit test cases that verify counts on "To be or not to be" and also verifies count on "The, the. THE!"

---
