<div align="center">

  <h1>Guidee</h1>

  <p>
    Application mobile mettant en relation voyageurs et guides locaux pour la création de sorties sur mesure
  </p>

<p>
  <a href="https://github.com/BaditSad/guideeAppCode/commits/main">
    <img src="https://img.shields.io/github/last-commit/BaditSad/guideeAppCode" alt="last update" />
  </a>
  <a href="https://github.com/BaditSad/guideeAppCode">
    <img src="https://img.shields.io/github/languages/top/BaditSad/guideeAppCode" alt="top language" />
  </a>
</p>

</div>

<br />

# Table des matières

- [À propos](#à-propos)
  * [Stack technique](#stack-technique)
  * [Fonctionnalités](#fonctionnalités)
- [Démarrage](#démarrage)
  * [Prérequis](#prérequis)
  * [Installation](#installation)
  * [Lancer en local](#lancer-en-local)
- [Contact](#contact)

## À propos

Guidee est une application mobile qui met en relation deux profils : les voyageurs (« user ») et les guides locaux (« pro »). Chaque profil dispose de son propre parcours d'inscription et de confirmation par email. Les voyageurs peuvent créer un projet de sortie ou de voyage puis découvrir des guides disponibles via un système de swipe, un peu comme un matching, avant d'organiser la sortie sur une carte.

Le projet a été généré avec FlutterFlow puis complété avec du code Dart natif pour les fonctionnalités métier, les notifications push et l'intégration Firebase.

### Stack technique

<details>
  <summary>Application mobile</summary>
  <ul>
    <li><a href="https://flutter.dev/">Flutter</a></li>
    <li><a href="https://dart.dev/">Dart</a></li>
    <li><a href="https://flutterflow.io/">FlutterFlow</a></li>
  </ul>
</details>

<details>
  <summary>Backend</summary>
  <ul>
    <li><a href="https://firebase.google.com/">Firebase</a></li>
    <li>Cloud Firestore</li>
    <li>Firebase Cloud Functions</li>
    <li>Notifications push Firebase</li>
  </ul>
</details>

### Fonctionnalités

- Deux types de comptes distincts : voyageur et guide, avec inscription et confirmation email dédiées
- Création de projet de sortie ou de voyage (`my_trip_creation`)
- Parcours de configuration du prochain voyage en plusieurs étapes (`nexttrip1_1`, `nexttrip1_2`, `nexttrip1_3`)
- Découverte des guides ou des sorties par swipe
- Ajout de lieux ou d'étapes sur une carte
- Notifications push pour le suivi des échanges

## Démarrage

### Prérequis

- Flutter SDK installé
- Un projet Firebase configuré (Firestore, Cloud Functions, Authentication)

### Installation

```bash
git clone https://github.com/BaditSad/guideeAppCode.git
cd guideeAppCode
flutter pub get
```

### Lancer en local

```bash
flutter run
```

## Contact

Brieuc Dumortier

[LinkedIn](https://www.linkedin.com/in/dumortier-brieuc/) - [GitHub](https://github.com/BaditSad) - dumortier.contact@gmail.com
