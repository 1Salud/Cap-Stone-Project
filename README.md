# Flashcard Share

## Table of Contents

* [Overview](#overview)
* [Product Spec](#product-spec)
* [Wireframes](#wireframes)
* [Schema](#schema)

---

## Overview

### Description

A super-simple mobile app for creating, tagging, and sharing flashcard decks. Study modes include “Flip,” “Quiz,” and “Review,” with sharing via link or QR code.

### App Evaluation

* **Category:** Education / Study Tools
* **Mobile:** Core features in-app—deck creation, basic study modes, push reminders for reviews.
* **Story:** Students quickly build decks during lectures, share with classmates, and review on the go—no desktop needed.
* **Market:** High school & college students, small study groups, tutors distributing custom decks.
* **Habit:** Open before exams or daily reviews; share with peers for collaborative learning.
* **Scope:**

  * **V1:** Create/delete decks & cards; basic “Flip” mode; share via link.
  * **V2:** Tagging & searching decks; push review reminders.
  * **V3:** Collaborative decks (multiple editors); simple analytics.
  * **V4:** Spaced-repetition scheduling; import/export (Anki/CSV).

---

## Product Spec

### 1. User Stories (Required and Optional)

#### Required Must-have Stories

* As a user, I can create and delete flashcard decks.
* As a user, I can add and remove cards in a deck.
* As a user, I can study a deck in “Flip” mode.
* As a user, I can share a deck via link or QR code.

#### Optional Nice-to-have Stories

* As a user, I can tag and search my decks.
* As a user, I receive push notifications reminding me to review decks.
* As a user, I can collaborate on decks with peers.
* As a user, I can view basic analytics (reviews completed, accuracy).
* As a user, I can use spaced-repetition scheduling.
* As a user, I can import/export decks in Anki/CSV format.

### 2. Screen Archetypes

* **Deck List Screen**

  * Shows all decks; allows creation and deletion (User Stories: create/delete decks).
* **Deck Editor Screen**

  * Add/edit cards (User Stories: add/remove cards).
* **Study Mode Screen**

  * Flip, Quiz, Review (User Stories: study in Flip mode).
* **Share Screen**

  * Generate and display link or QR code (User Stories: share deck).

### 3. Navigation

#### Tab Navigation (Tab → Screen)

* **Decks** → Deck List Screen
* **Study** → Study Mode Screen
* **Settings** → (future) Preferences Screen

#### Flow Navigation (Screen → Screen)

* Deck List Screen → Tap “+” → Deck Editor Screen
* Deck List Screen → Tap deck → Study Mode Screen
* Deck List Screen → Swipe deck → Delete deck
* Study Mode Screen → Tap “Share” → Share Screen
* Deck Editor Screen → Tap “Save” → Deck List Screen

---

## Wireframes

*Add pictures of your hand-sketched wireframes here.*

![Wireframe - Deck List](wireframes/deck_list.png)
![Wireframe - Deck Editor](wireframes/deck_editor.png)
![Wireframe - Study Mode](wireframes/study_mode.png)
![Wireframe - Share](wireframes/share.png)

**\[BONUS] Digital Wireframes & Mockups**
**\[BONUS] Interactive Prototype**

---

## Schema

*This section will be completed in Unit 9.*

### Models

| Model Name | Properties                                           | Description                   |
| ---------- | ---------------------------------------------------- | ----------------------------- |
| **Deck**   | `id: UUID`<br>`title: String`<br>`tags: [String]`    | Represents a flashcard deck   |
| **Card**   | `id: UUID`<br>`question: String`<br>`answer: String` | Represents a single flashcard |

### Networking

* **Local Persistence:** Uses UserDefaults or Core Data for deck/card storage.
* **Network Requests by Screen:** *(none in Unit 8 – local only)*
* **Basic Persistence Snippet (Swift):**

```swift
// Save decks
let data = try JSONEncoder().encode(decks)
UserDefaults.standard.set(data, forKey: "decks")

// Load decks
if let saved = UserDefaults.standard.data(forKey: "decks") {
    decks = try JSONDecoder().decode([Deck].self, from: saved)
}
```

* **\[OPTIONAL] API Endpoints (future):**

  * `GET /decks` – Fetch user decks
  * `POST /deck` – Create new deck
  * `PUT /deck/{id}` – Update deck
  * `DELETE /deck/{id}` – Delete deck
