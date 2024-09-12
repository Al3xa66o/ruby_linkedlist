require_relative "lib/linked_list"

list = LinkedList.new

list.append('cat')
list.append('dog')
list.append('turtle')
list.append('elephant')
list.append('fly')
list.append('cougar')
list.append('eagle')


puts list.find('fly')
puts list.to_s