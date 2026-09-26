<div align="center">
  <img src=".github/assets/banner.png" alt="Guidee banner" width="100%" />

  <h1>Guidee</h1>
  <p>
    Mobile app connecting travelers and local guides to build custom outings
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

## :notebook_with_decorative_cover: Table of Contents

- [About](#star2-about)
  * [Tech Stack](#space_invader-tech-stack)
  * [Features](#dart-features)
- [Getting Started](#toolbox-getting-started)
  * [Prerequisites](#bangbang-prerequisites)
  * [Installation](#gear-installation)
  * [Run Locally](#running-run-locally)
- [Contact](#handshake-contact)

## :star2: About

Guidee is a mobile app that connects two profiles: travelers ("user") and local guides ("pro"). Each profile
has its own sign-up and email confirmation flow. Travelers can create an outing or trip project, then discover
available guides through a swipe-based system, similar to matching, before organizing the outing on a map.

The project was generated with FlutterFlow and completed with native Dart code for business logic, push
notifications and Firebase integration.

### :space_invader: Tech Stack

<details>
  <summary>Mobile App</summary>
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
    <li>Firebase push notifications</li>
  </ul>
</details>

### :dart: Features

- Two distinct account types, traveler and guide, with dedicated sign-up and email confirmation
- Outing or trip project creation (`my_trip_creation`)
- Multi-step next-trip configuration flow (`nexttrip1_1`, `nexttrip1_2`, `nexttrip1_3`)
- Swipe-based guide and outing discovery
- Adding places or stops on a map
- Push notifications for conversation follow-up

## :toolbox: Getting Started

### :bangbang: Prerequisites

- Flutter SDK installed
- A configured Firebase project (Firestore, Cloud Functions, Authentication)

### :gear: Installation

```bash
git clone https://github.com/BaditSad/guideeAppCode.git
cd guideeAppCode
flutter pub get
```

### :running: Run Locally

```bash
flutter run
```

## :handshake: Contact

Brieuc Dumortier

[LinkedIn](https://www.linkedin.com/in/dumortier-brieuc/) - [GitHub](https://github.com/BaditSad) - dumortier.contact@gmail.com
