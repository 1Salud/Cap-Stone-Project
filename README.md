# ShoppingList

## Table of Contents

* [Overview](#overview)
* [Features](#features)
* [Product Spec](#product-spec)
* [Wireframes](#wireframes)
* [Schema](#schema)
* [Architecture](#architecture)
* [Future Work](#future-work)
* [License](#license)

---

## Overview

ShoppingList is a fully functional iOS app designed to help users manage grocery shopping lists efficiently. It allows adding, editing, and organizing items, marking them as purchased, and categorizing them by store location. The app is built with SwiftUI using an MVVM architecture and persists data locally with Core Data. It is compatible with iOS 13.0 and above.

---


## Video Walkthrough

Here is a reminder on how to embed Loom videos on GitHub. Feel free to remove this reminder once you upload your README. 
<div>
    <a href="https://www.loom.com/share/11ab84674b3b4f5589e9c516de2b87e0?sid=a33eef39-ea7c-42bb-b6dc-749f6b241d69">
      <p>Simulator - iPhone 14 Pro - 10 June 2025 - Watch Video</p>
    </a>
     <a href="[https://www.loom.com/share/21ab7c20ecd341baad60e748e9385c00?sid=07dbc99d-69f0-4eab-8098-b666778acf02](https://www.loom.com/share/517fb19b9a8849a5a3297d70cf75a532?sid=5fb80005-030d-45f5-b40b-661d346eee46)">
      <img style="max-width:300px;" src="https://media4.giphy.com/media/v1.Y2lkPTc5MGI3NjExaXpwNWt6anU5YXl3dXh0dDA0eWVwdGxmdm9zc3V3aDNvNGdueTJmNyZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/iCO6r2T1S9nQlJP1So/giphy.gif">
  </div>
       
## Features

* **Dynamic Lists:** Maintain both a shopping list and a purchased list.
* **Store Locations:** Categorize items by store sections (Dairy, Produce, etc.).
* **One-Tap Movement:** Use leading circular buttons to quickly move items between lists.
* **Editing:** Tap an item to modify details or long press for context menu actions.
* **Sorting:** Automatic sorting by visitation order and grouping by color-coded locations.
* **Timer:** Built-in in-store timer with start/stop/reset functions.
* **Dev Tools:** Load/remove sample data for quick demonstrations.
* **Persistence:** Core Data storage for all items and locations.

---

## Product Spec

### Required Must-have Stories

* Add, edit, delete shopping items.
* Move items between lists.
* Manage store locations.
* Use the in-store timer.
* Persist all data locally.

### Optional Nice-to-have Stories

* CloudKit sync.
* Printing/sharing capabilities.
* Multi-store support.

### Screen Archetypes

* **Shopping List:** Active items.
* **Purchased Items:** Past items.
* **Locations:** Location management.
* **Timer:** Track shopping time.
* **Dev Tools:** Manage sample/test data.

### Navigation

**Tab Navigation:** Shopping List, Purchased Items, Locations, Timer, Dev Tools (optional)

**Flow Navigation:**

* Shopping List → Item Edit
* Purchased Items → Item Edit
* Locations → Location Edit

---

## Wireframes

![Wireframe 1](wireframes/wireframe1.png)
![Wireframe 2](wireframes/wireframe2.png)
![Wireframe 3](wireframes/wireframe3.png)
![Wireframe 4](wireframes/wireframe4.png)

---

## Schema

**Models**

| Model        | Properties                                                                                             | Description         |
| ------------ | ------------------------------------------------------------------------------------------------------ | ------------------- |
| ShoppingItem | `id: UUID`, `name: String`, `quantity: Int`, `onList: Bool`, `isAvailable: Bool`, `location: Location` | Grocery list item   |
| Location     | `id: UUID`, `name: String`, `visitationOrder: Int`, `color: (Double,Double,Double,Double)`             | Store location info |

**Networking:** Local persistence only; Core Data-based.

---

## Architecture

* **Design Pattern:** MVVM
* **Storage:** Core Data with relationships between ShoppingItem and Location.
* **UI:** SwiftUI views connected to view models via `@ObservedObject`.
* **State Management:** NotificationCenter used for updates instead of @FetchRequest to improve control over data flow.
* **Sorting:** Items sorted by location visitation order and name.

---

## Future Work

* CloudKit integration for syncing across devices.
* iPadOS layout support.
* Advanced accessibility features for color-coded lists.
* Multi-store, many-to-many location/item relationships.
* Printing and list sharing.

---

## License

The app icon and any third-party components remain under their respective licenses. All original code is available under the terms specified in the LICENSE file.

---

**Final Submission Date:** Aug 13, 2025
