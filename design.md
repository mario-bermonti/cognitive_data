# Software design

## Models

- trials
- TrialType
- session
- device
- BD: ABC to standardize db implementations
  - add session
  - add device
  - add trial 

## In memory db

- add trial
- add session
- add device
- save drift

## Drift db
### db
- init db
- add trial
- add session
- add device

### Models
- trial
- session
- device

## Firebase db
### db
- init db
- add trial
- add trials
- add session
- add device

### Models
- trial
- session
- device

### db structure

The data will be structured assuming:

- many participants per study
- many tasks per participant
- many session per task 
- single device metadata per session
- single session metadata per session
- many trials per session
  
This aligns with the temporal properties of the data and makes it suitable for intensive 
longitudinal design and ecological momentary assessment studies.

The data will be organized in the following manner:

- collection: participants
  - document: participantID
    - field: participantID
    - collection: cognitive_tasks
      - document: taskID
        - field: taskID
        - collection: sessions
          - document: sessionID
            - field: sessionMetadata {map}
            - field: deviceMetadata {map}
            - field: trials [array {map}]