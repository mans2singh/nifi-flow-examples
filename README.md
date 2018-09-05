# NIFI-Flow-Examples - Neo4J

# Steps for running NIFI Neo4j Executor flow

## 1. Install and setup Neo4J
### 1.1. Use brew to install neo4j
`brew install neo4j`

### 1.2 Setup neo4j 
#### 1.2.1 Start neo4j 
```neo4j start```
#### 1.2.2 Log into cypher shell using default username/password - neo4j/neo4j
`cypher-shell` 
#### 1.2.3 Change password to admin 
`CALL dbms.changePassword('admin')`
#### 1.2.4 Restart neo4j 
`neo4j restart`
#### 1.2.5 Log into cypher shell using new password (admin)
`cypher-shell` 

## 2. Create NIFI Neo4J Flow
### 2.2 Create flow using nifi neo4j template
#### 2.2.1 Clone git project `https://github.com/mans2singh/nifi-flow-examples.git` and checkout branch `nifi-neo4j-examples`
`git clone https://github.com/mans2singh/nifi-flow-examples.git`

`git checkout nifi-neo4j-examples`
#### 2.2.2 Start NIFI and from the NIFI UI - import template `FileNeo4JExecutorTemplate.xml` from directory `neo4j-nifi-template`
#### 2.2.3 Create NIFI flow using the above template by dropping the template on the UI canvas
#### 2.2.4 Configure the GetFile processor to point to `neo4j-inputdir` directory in the project
#### 2.2.5 Configure the PutFile processor to point to `neo4j-outputdir` directory in the project
#### 2.2.6 Configure the Neo4JCypherExecutor processor
 2.2.6.1 - Set the neo4j url (default bolt://localhost:7867)
 
 2.2.6.2 - Set the neo4j username (eg: neo4j)
 
 2.2.6.3 - Set the neo4j password (eg: admin)

#### 2.2.7 Start all the processors and check/resolve any error
#### 2.2.8 Copy create-node.cyp file from `neo4j-input-example` directory to the GetFile input directory
#### 2.2.9 Check the results in the cypher shell using the command 
`match (n) return *;`
#### 2.2.10 Copy select-all-nodes.cyp file from `neo4j-input-example` directory to the GetFile input directory
#### 2.2.11 Check the results in the PutFile output directory
#### 2.2.12 To delete all nodes in neo4j execute the following command
`match (n) detach delete n;`




