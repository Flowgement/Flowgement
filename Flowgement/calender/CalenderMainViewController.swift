//
//  CalenderMainViewController.swift
//  Flowgement
//
//  Created by mat4645 on 2018/11/24.
//  Copyright © 2018年 MAT0622. All rights reserved.
//

import UIKit
import FSCalendar
import CalculateCalendarLogic

class CalenderMainViewController: UIViewController,FSCalendarDelegate,FSCalendarDataSource,FSCalendarDelegateAppearance {

    @IBOutlet weak var calendar: FSCalendar!
    @IBOutlet weak var testDate: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // デリゲートの設定
        self.calendar.dataSource = self
        self.calendar.delegate = self
        // 表示を日本語化
        self.calendar.appearance.headerDateFormat = "YYYY年MM月"
        self.calendar.calendarWeekdayView.weekdayLabels[0].text = "日"
        self.calendar.calendarWeekdayView.weekdayLabels[1].text = "月"
        self.calendar.calendarWeekdayView.weekdayLabels[2].text = "火"
        self.calendar.calendarWeekdayView.weekdayLabels[3].text = "水"
        self.calendar.calendarWeekdayView.weekdayLabels[4].text = "木"
        self.calendar.calendarWeekdayView.weekdayLabels[5].text = "金"
        self.calendar.calendarWeekdayView.weekdayLabels[6].text = "土"
        // 曜日の色を変更
        self.calendar.calendarWeekdayView.weekdayLabels[0].textColor = UIColor(red: 115/255, green: 109/255, blue: 94/255, alpha: 1.0)
        self.calendar.calendarWeekdayView.weekdayLabels[1].textColor = UIColor(red: 94/255, green: 100/255, blue: 115/255, alpha: 1.0)
        self.calendar.calendarWeekdayView.weekdayLabels[2].textColor = UIColor(red: 94/255, green: 100/255, blue: 115/255, alpha: 1.0)
        self.calendar.calendarWeekdayView.weekdayLabels[3].textColor = UIColor(red: 94/255, green: 100/255, blue: 115/255, alpha: 1.0)
        self.calendar.calendarWeekdayView.weekdayLabels[4].textColor = UIColor(red: 94/255, green: 100/255, blue: 115/255, alpha: 1.0)
        self.calendar.calendarWeekdayView.weekdayLabels[5].textColor = UIColor(red: 94/255, green: 100/255, blue: 115/255, alpha: 1.0)
        self.calendar.calendarWeekdayView.weekdayLabels[6].textColor = UIColor(red: 115/255, green: 109/255, blue: 94/255, alpha: 1.0)

        self.calendar.scrollDirection = .vertical


    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getDay(_ date:Date) -> (Int,Int,Int){
        let tmpCalendar = Calendar(identifier: .gregorian)
        let year = tmpCalendar.component(.year, from: date)
        let month = tmpCalendar.component(.month, from: date)
        let day = tmpCalendar.component(.day, from: date)
        return (year,month,day)
    }
    
    func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition){

        let tmpCalendar = Calendar(identifier: .gregorian)
        let year = tmpCalendar.component(.year, from: date)
        let month = tmpCalendar.component(.month, from: date)
        let day = tmpCalendar.component(.day, from: date)
    }

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
