person = {
  name: "Evgeny",
  profession: "Programmer"
}

job = {
  profession: "Chief",
  position: "Software Engineer",
  location: "USA"
}

# Concatenates/Merges two hashes
# Replaces the duplicate key value pari with the second
# pair's value

p person.merge(job)

changed = person.merge(job)
changed.delete(:location)

p changed
