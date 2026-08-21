# ✦ Anushka Dhumal — Aesthetic Personal Portfolio & Backend

A modern, high-performance, and visually striking personal portfolio website for **Anushka Dhumal** (Full-Stack Mobile & AI Developer | B.Tech Computer Science & Engineering).

---

## 🌟 Overview & Key Highlights

- **Custom Premium Aesthetic**: Obsidian dark canvas (`#07090e`), frosted glassmorphism cards (`backdrop-filter: blur(16px)`), electric indigo & cyan glow gradients, and animated glowing orbs.
- **Interactive Visuals**:
  - Interactive Canvas particle neural network with real-time mouse interaction & node connections.
  - Live typewriter terminal in the hero section displaying Java code architecture.
  - Category-filtered technical skills matrix with visual badges.
  - Interactive Project Modals for **ROTREX Virtual DNA** (ResNet18, OpenAI CLIP, LSB Steganography), **AI-Powered Resume Analyzer** (Java Spring Boot + FastAPI + NLP), and **iDigital** (Flutter + Supabase + Play Store).
  - Department Topper & CISCO Vice President leadership showcase.
  - Verified 16-certificate interactive grid with credential modals.
  - Form validation with asynchronous AJAX submission to the **Java Spring Boot REST API** and fallback offline mode.
- **Zero Frontend Framework Overhead**: Pure semantic **HTML5**, **CSS3**, and **Vanilla JavaScript** (ES6+).
- **Production-Ready Java Backend**: **Java 21 LTS + Spring Boot 3.3.2** REST API with Jakarta Validation, CORS support, and clean layered architecture (`Controller` ➔ `Service` ➔ `Model`).

---

## 📁 Project Structure

```text
portfolio/
├── frontend/
│   ├── index.html                  # Semantic HTML5 single-page portfolio
│   ├── css/
│   │   └── style.css               # Glassmorphism, animations, gradients & responsive design
│   ├── js/
│   │   └── script.js               # Canvas particles, typewriter, filters, modals & AJAX form
│   └── assets/
│       ├── images/                 # Project illustrations & avatars
│       ├── certificates/           # Certificate badges & previews
│       └── resume/                 # Anushka_Dhumal_Resume.pdf
│
├── backend/
│   ├── src/main/java/com/anushka/portfolio/
│   │   ├── PortfolioApplication.java       # Main Spring Boot Runner
│   │   ├── config/
│   │   │   ├── CorsConfig.java             # Cross-Origin Resource Sharing setup
│   │   │   └── WebMvcConfig.java           # Static resource router
│   │   ├── controller/
│   │   │   ├── ContactController.java      # POST /api/contact & GET /api/contact/status
│   │   │   └── ResumeController.java       # GET /api/resume/download
│   │   ├── service/
│   │   │   └── ContactService.java         # Processing & message storage
│   │   └── model/
│   │       ├── ContactMessage.java         # Request DTO with @NotBlank, @Email validation
│   │       └── ApiResponse.java            # Standardized JSON response envelope
│   ├── src/main/resources/
│   │   ├── application.properties          # Server port (8080) & config
│   │   └── static/                         # Optional direct hosting folder
│   └── pom.xml                             # Maven build configuration (Java 21 + Spring Boot 3.3)
│
└── README.md                               # Project documentation & guide
```

---

## 🚀 Getting Started Locally

### Option 1: Preview the Frontend Immediately (No Setup Required)

You can preview the website directly in any web browser:
1. Double-click `portfolio/frontend/index.html` to open it in Chrome, Edge, Safari, or Firefox.
2. *OR* Use VS Code extension **Live Server** on `portfolio/frontend/index.html`.

> **Note**: If the Spring Boot backend is not running yet, the contact form automatically operates in **smart offline mode**, saving submissions to `localStorage` and confirming your message with a toast notification.

---

### Option 2: Run the Java Spring Boot Backend

#### Prerequisites:
- **Java 21** or later installed.
- **Maven** (or use your preferred IDE like IntelliJ IDEA / Eclipse / VS Code).

#### Steps to Run:
```bash
# Navigate to the backend directory
cd portfolio/backend

# Run using Maven
mvn spring-boot:run
```

Once started, the backend will be live at:
- **Base URL**: `http://localhost:8080`
- **Contact API Health Check**: `GET http://localhost:8080/api/contact/status`
- **Contact Form Submission**: `POST http://localhost:8080/api/contact`
- **Resume Download**: `GET http://localhost:8080/api/resume/download`

---

## 📡 REST API Documentation

### 1. Submit Contact Inquiry
- **Endpoint**: `POST /api/contact`
- **Headers**: `Content-Type: application/json`
- **Request Body**:
```json
{
  "name": "Anushka Dhumal",
  "email": "anushkadhumal2005@gmail.com",
  "subject": "Opportunity / Collaboration Inquiry",
  "message": "Hello Anushka, I loved your ROTREX Virtual DNA project and would like to discuss..."
}
```
- **Success Response (`200 OK`)**:
```json
{
  "success": true,
  "message": "Thank you, Anushka Dhumal! Your message has been sent successfully. I will get back to you soon.",
  "data": null,
  "errors": null,
  "timestamp": "2026-08-20T22:30:00"
}
```

### 2. Download Resume
- **Endpoint**: `GET /api/resume/download`
- **Response**: Streams `Anushka_Dhumal_Resume.pdf` with `Content-Disposition: attachment`.

---

## 🎨 Customizing the Portfolio

1. **Adding Your Real Resume PDF**:
   - Place your PDF file in `portfolio/frontend/assets/resume/Anushka_Dhumal_Resume.pdf`.
2. **Updating Social Links**:
   - In `portfolio/frontend/index.html`, search for `https://github.com/anushkadhumal27` or `https://www.linkedin.com/in/anushka-dhumal` to update links.
3. **Adding New Projects or Certifications**:
   - Open `portfolio/frontend/index.html` and duplicate any `<div class="skill-card">` or `<div class="cert-card">`.
   - Update `projectData` in `portfolio/frontend/js/script.js` to customize the interactive architecture modal.

---

## 📄 License
© 2026 Anushka Dhumal. All rights reserved.
