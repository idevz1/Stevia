//
//  GetConstraintsTests.swift
//  Stevia
//
//  Created by Sacha DSO on 14/06/2017.
//  Copyright © 2017 Sacha Durand Saint Omer. All rights reserved.
//

import XCTest
import Stevia

class GetConstraintsTests: XCTestCase {
    
    var v: UIView!
    var spv: UIView!
    
    override func setUp() {
        spv = UIView()
        v = UIView()
        spv.sv(v)
    }
    
    func testCanGetLeftConstraint() {
        XCTAssertNil(v.leftCT)
        v.left(10)
        let c = v.leftCT
        XCTAssertNotNil(c)
        XCTAssertEqual(c?.constant, 10)
        XCTAssertEqual(c?.firstItem as? UIView, v)
        XCTAssertEqual(c?.secondItem as? UIView, spv)
        XCTAssertEqual(c?.firstAttribute, .left)
        XCTAssertEqual(c?.secondAttribute, .left)
        XCTAssertEqual(c?.multiplier, 1)
        XCTAssertEqual(c?.relation, .equal)
        XCTAssertEqual(c?.priority.rawValue, 751)
        XCTAssertEqual(c?.isActive, true)
    }
    
    func testCanGetRightConstraint() {
        XCTAssertNil(v.rightCT)
        v.right(42)
        let c = v.rightCT
        XCTAssertNotNil(c)
        XCTAssertEqual(c?.constant, -42)
        XCTAssertEqual(c?.firstItem as? UIView, v)
        XCTAssertEqual(c?.secondItem as? UIView, spv)
        XCTAssertEqual(c?.firstAttribute, .right)
        XCTAssertEqual(c?.secondAttribute, .right)
        XCTAssertEqual(c?.multiplier, 1)
        XCTAssertEqual(c?.relation, .equal)
        XCTAssertEqual(c?.priority.rawValue, 751)
        XCTAssertEqual(c?.isActive, true)
    }
    
    func testCanGetTopConstraint() {
        XCTAssertNil(v.topCT)
        v.top(23)
        let c = v.topCT
        XCTAssertNotNil(c)
        XCTAssertEqual(c?.constant, 23)
        XCTAssertEqual(c?.firstItem as? UIView, v)
        XCTAssertEqual(c?.secondItem as? UIView, spv)
        XCTAssertEqual(c?.firstAttribute, .top)
        XCTAssertEqual(c?.secondAttribute, .top)
        XCTAssertEqual(c?.multiplier, 1)
        XCTAssertEqual(c?.relation, .equal)
        XCTAssertEqual(c?.priority.rawValue, 751)
        XCTAssertEqual(c?.isActive, true)
    }
    
    func testCanGetBottomConstraint() {
        XCTAssertNil(v.bottomCT)
        v.bottom(145)
        let c = v.bottomCT
        XCTAssertNotNil(c)
        XCTAssertEqual(c?.constant, -145)
        XCTAssertEqual(c?.firstItem as? UIView, v)
        XCTAssertEqual(c?.secondItem as? UIView, spv)
        XCTAssertEqual(c?.firstAttribute, .bottom)
        XCTAssertEqual(c?.secondAttribute, .bottom)
        XCTAssertEqual(c?.multiplier, 1)
        XCTAssertEqual(c?.relation, .equal)
        XCTAssertEqual(c?.priority.rawValue, 751)
        XCTAssertEqual(c?.isActive, true)
    }
    
    func testCanGetHeightConstraint() {
        XCTAssertNil(v.heightCT)
        v.height(35)
        let c = v.heightCT
        XCTAssertNotNil(c)
        XCTAssertEqual(c?.constant, 35)
        XCTAssertEqual(c?.firstItem as? UIView, v)
        XCTAssertNil(c?.secondItem)
        XCTAssertEqual(c?.firstAttribute, .height)
        XCTAssertEqual(c?.secondAttribute, .notAnAttribute)
        XCTAssertEqual(c?.multiplier, 1)
        XCTAssertEqual(c?.relation, .equal)
        XCTAssertEqual(c?.priority.rawValue, 751)
        XCTAssertEqual(c?.isActive, true)
    }
    
    func testCanGetWidthConstraint() {
        XCTAssertNil(v.widthCT)
        v.width(51)
        let c = v.widthCT
        XCTAssertNotNil(c)
        XCTAssertEqual(c?.constant, 51)
        XCTAssertEqual(c?.firstItem as? UIView, v)
        XCTAssertNil(c?.secondItem)
        XCTAssertEqual(c?.firstAttribute, .width)
        XCTAssertEqual(c?.secondAttribute, .notAnAttribute)
        XCTAssertEqual(c?.multiplier, 1)
        XCTAssertEqual(c?.relation, .equal)
        XCTAssertEqual(c?.priority.rawValue, 751)
        XCTAssertEqual(c?.isActive, true)
    }
    
    func testCanGetTrailingConstraint() {
        XCTAssertNil(v.trailingCT)
        v.trailingAnchor.constraint(equalTo: spv.trailingAnchor, constant: 104).isActive = true
        let c = v.trailingCT
        XCTAssertNotNil(c)
        XCTAssertEqual(c?.constant, 104)
        XCTAssertEqual(c?.firstItem as? UIView, v)
        XCTAssertEqual(c?.secondItem as? UIView, spv)
        XCTAssertEqual(c?.firstAttribute, .trailing)
        XCTAssertEqual(c?.secondAttribute, .trailing)
        XCTAssertEqual(c?.multiplier, 1)
        XCTAssertEqual(c?.relation, .equal)
        XCTAssertEqual(c?.priority.rawValue, 1000)
        XCTAssertEqual(c?.isActive, true)
    }
    
    func testCanGetLeadingonstraint() {
        XCTAssertNil(v.leadingCT)
        v.leadingAnchor.constraint(equalTo: spv.leadingAnchor, constant: 73).isActive = true
        let c = v.leadingCT
        XCTAssertNotNil(c)
        XCTAssertEqual(c?.constant, 73)
        XCTAssertEqual(c?.firstItem as? UIView, v)
        XCTAssertEqual(c?.secondItem as? UIView, spv)
        XCTAssertEqual(c?.firstAttribute, .leading)
        XCTAssertEqual(c?.secondAttribute, .leading)
        XCTAssertEqual(c?.multiplier, 1)
        XCTAssertEqual(c?.relation, .equal)
        XCTAssertEqual(c?.priority.rawValue, 1000)
        XCTAssertEqual(c?.isActive, true)
    }
    
}
