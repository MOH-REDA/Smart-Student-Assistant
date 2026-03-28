# Smart Student Assistant 📱🎓

![Flutter](https://img.shields.io/badge/Flutter-3.x-blue)
![Dart](https://img.shields.io/badge/Dart-3.x-0175C2)
![Mobile](https://img.shields.io/badge/Platform-Android-green)
![REST API](https://img.shields.io/badge/API-REST-orange)
![Retrofit](https://img.shields.io/badge/Retrofit-Dio-purple)
![Chatbot](https://img.shields.io/badge/Feature-Chatbot-ff69b4)
![Architecture](https://img.shields.io/badge/Architecture-MVC-lightgrey)
![Academic](https://img.shields.io/badge/Project-Academic-important)


Smart Student Assistant est une application mobile développée avec **Flutter** dans le cadre d’un devoir de synthèse.  
Elle vise à assister les étudiants dans leur environnement académique à travers une interface simple, claire et professionnelle.

---

## 🎯 Objectifs pédagogiques

Ce projet permet de mettre en pratique :
- Le langage **Dart**
- Les **widgets Flutter**
- La navigation entre pages
- La consommation d’API REST avec **Retrofit + Dio**
- L’intégration d’un **chatbot**
- L’utilisation d’un **thème global**
- La gestion d’état simple (`setState`, `FutureBuilder`)

Aucun state management avancé n’est utilisé.

---

## 🧩 Fonctionnalités

- Page **Accueil**
- Menu latéral (**Drawer**) avec avatar
- Page **Profil**
- Page **Paramètres**
- Page **À propos**
- Page **Chatbot** connecté à une API REST
- Thème global centralisé

---

## 🛠️ Contraintes techniques respectées

- ✅ Retrofit + Dio pour les appels API
- ✅ Aucun Provider / Bloc / Riverpod / GetX
- ✅ Gestion d’état via :
    - `setState`
    - `FutureBuilder`
    - `TextEditingController`
- ✅ Thème global (`ThemeData`)
- ❌ Aucune couleur codée directement dans les widgets

---

## 📁 Structure du projet
```
lib/
├── main.dart
├── theme/
│ └── app_theme.dart
├── pages/
│ ├── home_page.dart
│ ├── profile_page.dart
│ ├── settings_page.dart
│ ├── about_page.dart
│ └── chatbot_page.dart
├── widgets/
│ └── app_drawer.dart
├── services/
│ └── rag_api.dart
├── models/
│ └── rag_response.dart
assets/
└── images/
└── plaze.jpg
```
---

## 🚀 Lancement du projet

### 1. Cloner le dépôt :
```bash
git clone https://github.com/your-username/smart_student_app.git
```


### 2.Installer les dépendances
```bash
flutter pub get
```

### 3.Lancer l’application :
```bash
flutter run
```

## 📚 Contexte académique

Projet réalisé dans le cadre du module Développement Mobile avec Flutter,
ayant pour objectif de synthétiser l’ensemble des notions vues en ateliers pratiques.

## Screenshots
<img width="371" height="794" alt="Screenshot 2026-01-07 161740" src="https://github.com/user-attachments/assets/89f49f14-8c90-4962-9922-38fe7eb83f5d" />
<img width="358" height="770" alt="Screenshot 2026-01-07 153922" src="https://github.com/user-attachments/assets/7f784550-f39e-4d96-acf5-82e757283359" />

<img width="1854" height="757" alt="Screenshot 2025-12-02 115437" src="https://github.com/user-attachments/assets/dd83e46d-a281-4a3b-86d3-7f854c14c85f" />


