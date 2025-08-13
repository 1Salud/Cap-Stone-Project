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
    <a href="https://www.loom.com/share/d5e7b703837846c1993020d94547821b?sid=61dd404b-1ab6-4836-98f0-4f5ecded8a1b">
      <p>Simulator - iPhone 14 Pro - 10 June 2025 - Watch Video</p>
    </a>
     <a href="[https://www.loom.com/share/d5e7b703837846c1993020d94547821b?sid=61dd404b-1ab6-4836-98f0-4f5ecded8a1b](https://www.loom.com/share/d5e7b703837846c1993020d94547821b?sid=61dd404b-1ab6-4836-98f0-4f5ecded8a1b)">
      <img style="max-width:300px;" src="https://media2.giphy.com/media/v1.Y2lkPTc5MGI3NjExbnVoM2s2bGdxbjM0eW1vMjI3dW1vZWlnZzlwbHM0dTVsNWRtY2UxZCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/17qkwDdHKnWWBpwgSK/giphy.gif">
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
