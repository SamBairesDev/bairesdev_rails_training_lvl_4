# Rails Development Program - Level 4 Exercises


A company must create a new software to register personal information for its employees and clients. But for it to be easy to use, it must have a tag system that can have 3 kinds of tag types, Project that the person is, the country where the person lives, and role in the company.

Create an API that will allow that interaction using the following design patterns:
- DRY
- 12 factor app
- SOLID
- Paranoia

The API must be stateless and must obey the Restful design pattern.

- Paranoia
    - soft delete
    - deleted_at: datetime
    - it modifies the default scope to get only deleted_at is null
    - .with_deleted .only_deleted
    
- Twelve-Factor App
    - good practices for a SaaS app (software as a service)
    1. Codebase
        1. one repository
    2. Dependences
        1. package controller
        2. explicitly declared and isolated
    3. Configurations
        1. variations between deploys environments
        2. store them locally
    4. Backing Services
        1. attached resources
        2. database
        3. cache
    5. Build, Release, Run
        1. strictly separated
        2. CI/CD    
        3. Docker Containers
    6. Processes
        1. app as one or more stateless processes
        2. eg. data persistence on a backing service
        3. aiming scaling
    7. Port Binding
        1. specific & exclusive port
        2. app can become an exportable service
    8. Concurrency
        1. more than one process
        2. self-sufficient
    9. Disposability
        1. fast startup
        2. graceful shutdown
    10. Dev/Prod Parity
        1. keep environments as similar as possible
        2. containers with Docker helps this
    11. Logs
        1. independent event streams
    12. Admin Processes
        1. run this task as one-off process
        2. system base code
        
- DRY
    - Don't Repeat Yourself
    
- SOLID Principles
    - Single Responsibility (chef, gardener, painter, driver)
    - Open-Closed
        - open for extension (can cut, then, can cut and paint)
        - closed for modification (can cut, then, can't cut but can paint)
    - Liskov Substitution
        - A child Class has to be able to perform the same actions as its parent Class
    - Interface Segregation
        - Clients should not be forced to depend on methods they don't use
    - Dependency Inversion
        - High-level (executes action with tool) modules should not depend on Low-level modules (tool needed to execute action)
        - Both modules should depend on the Abstraction (interface that connects the two modules)
        - Abstractions should not depend on Details (how the tool works)
        - Details should depend on Abstractions
        - action should not be fused with the tool but with the interface that will allow the toll to connect with the action maker
        - action maker and interface don't know how the tool works
        - tool should meet the specification of the interface
