# Superheroes

Tracking heroes and their superpowers.

## Technologies
<img src="https://skillicons.dev/icons?i=ruby,rails,sqlite,markdown" />

## Models

- A `Hero` has many `Power`s through `HeroPower`

- A `Power` has many `Hero`s through `HeroPower`

- A `HeroPower` belongs to a `Hero` and belongs to a `Power`
 
    **```Hero --< HeroPower >-- Power```**

## Entity Relationships Diagram
<div><img src="./erd.png" /></div>

## Validations
### HeroPower Model
- `strength` must be ['Strong','Weak','Average']

### Power Model
- `description` must be present and at least 20 characters long

## Routes
