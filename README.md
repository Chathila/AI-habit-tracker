# HabitCoach iOS

HabitCoach is an iOS habit-tracking app that helps users build consistency through daily check-ins.

The app is designed for personal and family use. Each user has their own account, habits, check-ins, reminders, and history.

## Planned Features

- Email and password sign up, login, logout, and password reset
- Personal habit creation and editing
- Soft-deleting habits without losing old history
- Daily manual check-ins for active habits
- Conversational-style check-ins
- Missed-day check-ins for previous dates
- Evening reminder notifications
- Dashboard with today's status and basic progress
- Check-in history with saved habit results and notes

## How It Works

Users create habits they want to track, then complete a short daily check-in. For each habit, they can mark it as completed, not completed, or skipped, with an optional short note.

HabitCoach keeps old check-in records stable, even if a habit is renamed or deactivated later.

## Tech Stack

- SwiftUI
- Supabase Auth
- Supabase Postgres
- iOS local notifications
