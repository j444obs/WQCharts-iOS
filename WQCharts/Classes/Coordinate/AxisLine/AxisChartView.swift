// 代码地址: https://github.com/CoderWQYao/WQCharts-iOS
//
// AxisChartView.swift
// WQCharts
//
// Created by WQ.Yao on 2020/01/02.
// Copyright (c) 2020年 WQ.Yao All rights reserved.
//

import UIKit

@objc(WQAxisChartView)
open class AxisChartView: CoordinateChartView {

    @objc private(set) public var chart = AxisChart()
    @objc private(set) public var graphic: AxisGraphic?
    
    public override func draw(_ rect: CGRect, _ context: CGContext) {
        let graphic = chart.drawGraphic(rect, context)
        chart.drawText(graphic, context)
        self.graphic = graphic
    }

}