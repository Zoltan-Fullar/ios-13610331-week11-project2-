import UIKit
//struct จะเป็นแบบ Pass by value คือเหมือนก็อปปี้แยกคนละอัน ไม่มีผลกับอีกอัน
//class จะเป็นแบบ Pass by Reference คือเหมือนก็อปปี้แยกคนละอัน แต่จะมีผลกับอีกอัน
struct CalculateBrain {
    var bmi: Float = 0.0 //เก็บตังเดียว
    var bmiStruct : BMI? //เก็บ 3 ตัวเป็นชุด
    
    func getbmiValue() -> String {
     //   let bmiTo1DecimalPlace = String(format: "%.1f", bmi)
        let bmiTo10DecimalPlace = String(format: "%.1f", bmiStruct?.value ?? 0.0)
        return bmiTo10DecimalPlace
    }
    
    func getAdvice() -> String {
        return bmiStruct?.advice ?? "No Adivice"
    }
    func getColor() -> UIColor {
        return bmiStruct?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    mutating func calculateBMI(height:Float, weidth:Float){
//        //bmi นี้ไม่มี var หรือ let นำหน้าคือตัวที่เป็น Global var
//        //weidth กับ heigth คือตัวที่ func รับค่ามาในชื่อนั้นๆเป็น Local var
//        bmi = weidth
        
        let bmiValueLocal = weidth/(height*height)
        if bmiValueLocal < 18.5{
            bmiStruct = BMI(value: bmiValueLocal, advice: "Eat more pies!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        }
        else if bmiValueLocal < 24.9 {
            bmiStruct = BMI(value: bmiValueLocal, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        }
        else {
            bmiStruct = BMI(value: bmiValueLocal, advice: "Eat less pies!", color: #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1))
        }
    }
    
}
