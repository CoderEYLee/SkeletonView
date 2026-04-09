//
//  SkeletonView_OC.swift
//  SkeletonView
//
//  Created by lieryang on 2026/4/9.
//

import Foundation

@objcMembers
public class SkeletonViewOCConfig: NSObject {
    /// 配置渐变色颜色
    static public func configGradient(baseColor: UIColor, secondaryColor: UIColor? = nil) {
        SkeletonAppearance.default.gradient = SkeletonGradient(baseColor: baseColor, secondaryColor: secondaryColor)
    }
}

@objc public extension UIView {
    
    /// 显示(静态)
    func showSkeleton_OC() {
        self.showSkeleton()
    }

    /// 显示(静态+渐变)
    func showGradientSkeleton_OC() {
        self.showGradientSkeleton()
    }
    
    /// 显示(动画)
    func showAnimatedSkeleton_OC() {
        self.showAnimatedSkeleton()
    }

    /// 显示(动画+渐变)
    func showAnimatedGradientSkeleton_OC() {
        self.showAnimatedGradientSkeleton()
    }
    
    func isSkeletonActive_OC() -> Bool {
        self.sk.isSkeletonActive
    }

    func hideSkeleton_OC() {
        self.hideSkeleton()
    }
    
    func stopSkeletonAnimation_OC() {
        self.stopSkeletonAnimation()
    }
}

@objc public extension UILabel {
    // MARK: UILabel+SKExtensions

    func skeletonPaddingInsets_OC(insets: UIEdgeInsets) {
        self.skeletonPaddingInsets = insets
    }

    // type 1:relativeToFont   2:relativeToConstraints   >2:fixed(CGFloat)
    func skeletonTextLineHeight_OC(type: Int) {
        if type == 1 {
            self.skeletonTextLineHeight = .relativeToFont
        } else if type == 2 {
            self.skeletonTextLineHeight = .relativeToConstraints
        } else {
            self.skeletonTextLineHeight = .fixed(CGFloat(type))
        }
    }

    // type 1:`inherited`   2:custom(Int)
    func skeletonTextNumberOfLines_OC(type: Int) {
        if type == 1 {
            self.skeletonTextNumberOfLines = .inherited
        } else {
            self.skeletonTextNumberOfLines = .custom(type)
        }
    }

    // MARK: UIView+SKExtensions

    func skeletonTreeDescription_OC() -> String {
        self.sk.skeletonTreeDescription
    }
}

@objc public extension UITextView {
    // MARK: UITextView+SKExtensions

    func skeletonPaddingInsets_OC(insets: UIEdgeInsets) {
        self.skeletonPaddingInsets = insets
    }

    // type 1:relativeToFont   2:relativeToConstraints   >2:fixed(CGFloat)
    func skeletonTextLineHeight_OC(type: Int) {
        if type == 1 {
            self.skeletonTextLineHeight = .relativeToFont
        } else if type == 2 {
            self.skeletonTextLineHeight = .relativeToConstraints
        } else {
            self.skeletonTextLineHeight = .fixed(CGFloat(type))
        }
    }

    // type 1:`inherited`   2:custom(Int)
    func skeletonTextNumberOfLines_OC(type: Int) {
        if type == 1 {
            self.skeletonTextNumberOfLines = .inherited
        } else {
            self.skeletonTextNumberOfLines = .custom(type)
        }
    }

    // MARK: UIView+SKExtensions

    func skeletonTreeDescription_OC() -> String {
        self.sk.skeletonTreeDescription
    }
}

@objc public extension UIImageView {}
