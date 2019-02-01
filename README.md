# Build APIs You Won't Hate #2: This Time It's Serious!

## Theory

- APIs, Services, and Microservices

- RPC, REST and GraphQL
  - Technical Differences
  - When to use which

- Hypermedia Controls (HATEOAS)
  - Layers of abstaction on top of RPC
  - Next available actions
  - Standards (JSON:API, HAL, etc.)

- HTTP/1, HTTP/2 and HTTP/3
  - HTTP/2 is a real world thing today use it
  - Lets Stop Building Around a Network Hack

- Asynchronous Methodologies
  - Long Polling
  - Web Hooks (a.k.a Callbacks)
  - WebSockets
  - Message Brokers (AMQP, Kafka, etc.)

- API Specifications
  - Design First vs Code First

## Planning & Design

- Style Guides
  - http://apistylebook.com/design/guidelines/
- Mocking & Sandboxes
- Documentation
- Collections
  - Pagination
  - Filtering
- Caching
- Authentication
- Validation
  - JSON Schema Validation
- Error Formats

## Testing & Monitoring
- Traffic Inspection
- Integration Testing
- Contract Testing
- End to End / Acceptance Testing
- Health Checks
- Load Testing
- Testing in ProductionS

## Deployment

Ugh do I have to? It's just like deploying any other application no?

Maybe Kubernetes httpGet /health

## Management

- API Gateways
- Gateway Validation
- Rate Limiting
- Analytics
- Governance (Speccy / Specteral / Stoplight)

## Retiring & Deprecating

- Deprecation
- Versioning & Evolution

## Not Sure Where To Place

- Backend for Frontends (BFF)
- Debugging