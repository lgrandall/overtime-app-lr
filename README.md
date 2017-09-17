## Overtime App

## Key requirement: company needs documentation that salaried employees did or did not get overtime each week

## Models

- X Post -> date:date rationale:text
- x User -> Devise
- x AdminUser -> STI
- Audit log model to be added

## Features:

- Approval Workflow
- SMS Sending -> link to approval or overtime input
- x Administrate admin dashboard
- x Block non Admin and guest users
- Email summary to managers for approval
- Needs to be documented if employee did not log overtime

## UI:
- x Bootstrap -> formatting
- x Icons from glyphicons
- x Update styles for forms

## REFACTOR TODO'S
- Refactor post/_form for admin user with status
