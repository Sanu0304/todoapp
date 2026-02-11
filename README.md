# To-Do Task Manager App (Flutter)

## Overview
This is a Flutter based task management application that allows users to create task cards and manage their daily activities.

The application includes an onboarding screen, task creation interface, and a dynamic task list that updates instantly when tasks are added or completed.

This project was developed as part of my Flutter learning portfolio to practice UI interaction, state updates, and list management.


## Application Flow
1. User opens the app and views the onboarding screen
2. User navigates to the task creation page
3. User enters a task and creates a task card
4. The task appears in the task list
5. When the task is tapped/completed, the UI updates and shows it as finished


## Features
- Onboarding screen
- Add task cards
- Dynamic task list
- Mark task as completed
- Instant UI update
- Simple and clean interface


## Tech Stack
- Flutter
- Dart
- Stateful Widgets
- ListView Builder
- UI Interaction Handling


## How the App Works
The app stores tasks temporarily in memory.  
Whenever a user creates a task, it is added to a list and displayed immediately on the screen.  
When a task is marked complete, the state updates and the UI rebuilds showing the completed status.


## How to Run
1. Clone this repository
2. Run:
   flutter pub get
3. Connect device or start emulator
4. Run:
   flutter run


## Screenshots

### Onboarding Screen
![Splash SCreen]()
### Add Task Screen
![Add Task]()

### Task List Screen
![Task List]()
