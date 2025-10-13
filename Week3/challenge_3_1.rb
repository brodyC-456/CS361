class Node
    attr_accessor :value, :left, :right
    def initialize(value)
        @value = value
        @left = nil
        @right = nil
    end
end

class BST
    attr_accessor :root

    def initialize
        @root = nil
    end
    
    def createNode(value)
        @root = addNode(@root, value)
    end
    
    def searchNode(value)
        search(@root, value)
    end

    def printBST
        printTree(@root)
        puts
    end

private def addNode(node, value)
    return Node.new(value) if node.nil?
    if value < node.value
        node.left = addNode(node.left, value)
    elsif value > node.value
        node.right = addNode(node.right, value)
    end
    node
end


def search(node, value)
    return false if node.nil?
    return true if node.value == value
    if value < node.value
        search(node.left, value)
    else
        search(node.right, value)
    end
end

def printTree(node)
    return if node.nil?
        printTree(node.left)
        print "#{node.value} "
        printTree(node.right)
    end
end

bst = BST.new;
[5, 3, 7, 2, 4, 6, 8].each {|n| bst.createNode(n)}
    puts "Contains Node 4: #{bst.searchNode(4)}"
    puts "Contains Node 10: #{bst.searchNode(10)}"
    print "Tree: "
    bst.printBST