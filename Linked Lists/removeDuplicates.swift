  class LinkedList {
    var value: Int
    var next: LinkedList?

    init(value: Int) {
      self.value = value
    }
  }

  func removeDuplicatesFromLinkedList(_ linkedList: LinkedList) -> LinkedList {
      var curr = linkedList
      while curr.next != nil{
        var temp = curr.next
        while temp != nil && temp?.value == curr.value{
            temp = temp?.next
        }
			if temp != nil{
				curr.next = temp
        curr = temp!
			}else{
				curr.next = nil
			}

    }
    return linkedList
  }