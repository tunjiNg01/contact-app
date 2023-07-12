import UIKit

// The general syntax for a subscript is of form

struct FrequencyAmplifier {
    var frequency: Int
    
    subscript(index: Int) -> Int {
        get {
            return frequency * index
        }
        set(newValue) {
            
        }
    }
}

var sub = FrequencyAmplifier(frequency: 2)
 print(sub[7])


struct Matrix {
    let rows, columns : Int
    var grid: [Double]
    
    init(rows: Int, colums: Int) {
        self.rows = rows
        self.columns = colums
        grid = Array(repeating: 0.0, count: rows * colums)
    }
    
    func indexIsValid(row: Int, column: Int) -> Bool {
          return row >= 0 && row < rows && column >= 0 && column < columns
      }
    
    subscript(row: Int, column: Int) -> Double{
        get{
            assert(indexIsValid(row: row, column: column), "Index out of range")
            return grid[(row * columns) + column]
        }
        
        set{
            assert(indexIsValid(row: row, column: column), "Index out of range")
                   grid[(row * columns) + column] = newValue
        }
    }
}

var matrix = Matrix(rows: 3, colums: 2)
matrix[2, 1] = 2.4
matrix[1, 1] = 2.4
print(matrix.grid)

enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
    static subscript(n: Int) -> Planet {
        return Planet(rawValue: n)!
    }
}
let mars = Planet[4]
print(mars)
