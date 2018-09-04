create (n:Person {name :"John"})  
create (m:Person {name :"Pete"})
create (n)-[r:FRIEND]->(m)
return n.name, id(r), m.name

