# TaskMaster

## Table of Contents

* [Overview](#overview)
* [Product Spec](#product-spec)
* [Wireframes](#wireframes)
* [Schema](#schema)
* [Sprint Planning](#sprint-planning)

---

## Overview

### Description

TaskMaster is an iOS task management app that helps users create, organize, and track their daily to-dos. With a simple list view and integrated calendar, users can add tasks, set due dates, mark them complete, and review upcoming work—all while data persists locally.

### App Evaluation

Evaluate your app across the following attributes:

* **Category:** Productivity / Task Management
* **Mobile:** Designed for iPhone (iOS 13+)
* **Story:** Users need a lightweight, offline-capable way to track tasks and deadlines.
* **Market:** Students, freelancers, and professionals juggling multiple tasks.
* **Habit:** Daily usage for task entry and review.
* **Scope:** Minimal viable features for task CRUD and calendar view in Unit 8, with possible expansion (notifications, cloud sync) in future units.

---

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* [ ] As a user, I can view a list of all my tasks.
* [ ] As a user, I can add a new task with title, note, and due date.
* [ ] As a user, I can mark a task as complete or incomplete.
* [ ] As a user, I can delete a task from the list.
* [ ] As a user, my tasks persist between app launches (using UserDefaults/Core Data).
* [ ] As a user, I can view tasks by due date in a calendar view.

**Optional Nice-to-have Stories**

* [ ] As a user, I can edit the details of an existing task.
* [ ] As a user, I can sort or filter tasks (e.g., by date, completion status).
* [ ] As a user, I can set reminders/notifications for tasks.
* [ ] As a user, I can categorize tasks (Work, Personal, Urgent).

### 2. Screen Archetypes

* **Task List Screen**

  * Associated Story: View all tasks, mark complete, delete
* **Add/Edit Task Screen**

  * Associated Story: Add or edit task details (title, note, due date)
* **Task Detail Screen**

  * Associated Story: Review full task information and toggle completion
* **Calendar Screen**

  * Associated Story: Display tasks on their due dates in a monthly calendar view

### 3. Navigation

#### Tab Navigation (Tab → Screen)

* **Tasks** → Task List Screen
* **Calendar** → Calendar Screen
* **Settings** → (future) App Preferences Screen

#### Flow Navigation (Screen → Screen)

* **Task List Screen** → Tap “+” → Add Task Screen
* **Task List Screen** → Tap cell → Task Detail Screen
* **Task Detail Screen** → Tap “Edit” → Add/Edit Task Screen
* **Calendar Screen** → Select date → Task List filtered by date

---

## Wireframes

Below are hand-sketched wireframes illustrating each screen layout.

![Wireframe - Task List](wireframes/task_list.png)
![Wireframe - Add Task](wireframes/add_task.png)
![Wireframe - Calendar](wireframes/calendar.png)

**\[BONUS] Digital Wireframes & Mockups**
*(to be added as interactive Figma prototypes)*

---

## Schema

*This section will be completed in Unit 9.*

### Models

| Model Name         | Properties                           | Description |
| ------------------ | ------------------------------------ | ----------- |
| **Task**           | `id: UUID`                           |             |
| `title: String`    |                                      |             |
| `note: String?`    |                                      |             |
| `dueDate: Date?`   |                                      |             |
| `isComplete: Bool` | Represents a user task with metadata |             |

### Networking

Currently, TaskMaster persists data locally and does not require network requests.

* **Local Persistence:** Uses UserDefaults to store an array of encoded Task objects.

*(Future Units may add cloud sync endpoints like RESTful APIs or GraphQL.)*

---

## Sprint Planning

### Overview

We’ll divide development into week-long sprints, each with clear, SMART goals and its own Git branch. Merge back to `main` when all criteria are met and verified.

### Sprint Breakdown

| Sprint                          | Dates               | SMART Goals                                                                                                                                                                                                      | Branch Name        |
| ------------------------------- | ------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------ |
| **Sprint 1: Setup**             | Aug 6–Aug 13, 2025  | Set up the Xcode project with Swift package dependencies; implement the `Task` model and UserDefaults persistence with unit tests covering serialization logic.                                                  | `sprint1-setup`    |
| **Sprint 2: Task List UI**      | Aug 14–Aug 21, 2025 | Design and implement the Task List screen: a `UITableView` or `List` in SwiftUI that fetches from the local store and displays task title, due date, and completion status; include UI tests for cell rendering. | `sprint2-tasklist` |
| **Sprint 3: Add/Edit Task**     | Aug 22–Aug 29, 2025 | Build the Add/Edit Task screen with form inputs for title, note, and due date; save or update a task in local store; include form validation tests.                                                              | `sprint3-addedit`  |
| **Sprint 4: Calendar & Detail** | Aug 30–Sep 6, 2025  | Implement the Calendar view to display due dates; add navigation into Task Detail screen; allow toggling completion from detail; include integration tests for navigation flow.                                  | `sprint4-calendar` |

### Branch & Merge Workflow

* Create a new branch **for each sprint** from `main`.
* Push incremental work and open a Pull Request early for feedback.
* Merge to `main` only when all acceptance criteria and tests pass.

---
