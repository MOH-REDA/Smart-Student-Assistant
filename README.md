# Smart Student Assistant 📱🎓

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
