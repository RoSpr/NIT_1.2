import UIKit

class Figure {
    var name: String = "Some Figure"
    var numberOfCorners: Int = 0
}

class Triangle: Figure {
    var height_a: Double = 0
    var side_a: Double = 0
    var side_b: Double = 0
    var side_c: Double = 0
    
    func countArea() -> Double {
        let area = 0.5 * height_a * side_a
        return area
    }
}

class Circle: Figure {
    var radius: Double = 0
    func countArea() -> Double {
        let area = Double.pi * pow(radius, 2)
        return area
    }
}

class Rectangle: Figure {
    var height: Double = 0.0
    var width: Double = 0.0
}

extension Triangle {
    func is_equilateral() -> Bool {
        if side_a == side_b && side_b == side_c {
            return true
        } else {
            return false
        }
    }
}

extension Circle {
    func count_length(radius: Double) -> Double {
        return Double.pi * radius
    }
}

extension Rectangle {
    func count_diagonal() -> Double {
        return sqrt(pow(height, 2) + pow(width, 2))
    }
}
