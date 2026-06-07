# Interactive Student ID Card

A high-fidelity, modern, and interactive Student ID Card component. Built with React, Vite, and the `ProfileCard` component from [React Bits](https://reactbits.dev/), this project features physics-based 3D tilt effects, dynamic state management, and beautiful spring-based animations.

## ✨ Features

- **3D Physics Tilt Effect**: The card tracks the mouse and tilts dynamically for a premium, realistic feel.
- **Interactive State Toggling**: Easily switch between "Active" (Green) and "Inactive" (Grey) enrollment statuses with smooth badge color transitions.
- **Spring Animations**: Custom cubic-bezier animations provide a polished, bouncy, and smooth UI experience.
- **Standalone Export**: Configured with `vite-plugin-singlefile` so the entire React application can be bundled into a single, highly portable `student-card.html` file that works entirely offline with no server required.
- **Modern UI**: Styled with glassmorphism effects, inner glows, and a dark, premium aesthetic.

## 🛠️ Tech Stack

- **Framework**: [React](https://react.dev/) + [Vite](https://vitejs.dev/)
- **Styling**: Vanilla CSS with custom properties and flexbox layout.
- **Components**: Modified `ProfileCard` component.
- **Bundler**: `vite-plugin-singlefile`

## 🚀 Getting Started

### Prerequisites
Make sure you have [Node.js](https://nodejs.org/) installed on your machine.

### Installation

1. Clone or download the repository.
2. Install the dependencies:
   ```bash
   npm install
   ```

### Development Server
To start the local development server with Hot Module Replacement (HMR):
```bash
npm run dev
```
Then, open your browser and go to `http://localhost:5173`.

## 📦 Building for Production (Standalone HTML)

If you want to generate a single, standalone HTML file that contains everything (HTML, CSS, JS, and React) so it can be double-clicked and run offline:

```bash
npm run build
```
This will compile the app and create a `dist/index.html` file. We typically rename this output to `student-card.html` for easier sharing!

## ⚙️ Customization

- **Changing Student Details**: Open `src/App.jsx` and modify the `name`, `title` (Course), and `handle` (Email) props passed to the `<ProfileCard />`.
- **Changing the Avatar**: Replace the `avatar.png` file located in the `public/` directory with your own image, or update the `avatarUrl` prop in `App.jsx`.
- **Theme Colors**: Open `src/ProfileCard.css` to tweak the background gradients, card colors, and badge status colors.
