//
//  LXTool.swift
//  LXToolShare
//
//  Created by 广东万商通科技有限公司 on 2024/5/6.
//

import UIKit
import CommonCrypto

public class LXTool: NSObject {
    
    func saveValue(_ value: String?, forKey key: String) {
        UserDefaults.standard.setValue(value, forKey: key)
        UserDefaults.standard.synchronize()
    }
    
    func removeValue(forKey key: String) {
        UserDefaults.standard.removeObject(forKey: key)
        UserDefaults.standard.synchronize()
    }
    
    func getValue(forKey key: String) -> String {
        return "\(UserDefaults.standard.object(forKey: key) ?? "")"
    }
    
    ///字典转化成字符串
    func jsonString(from dictionary: [String: Any]) -> String? {
        do {
            let jsonData = try JSONSerialization.data(withJSONObject: dictionary, options: .prettyPrinted)
            let jsonString = String(data: jsonData, encoding: .utf8)?.replacingOccurrences(of: "\n", with: "")
            return jsonString
        } catch {
            return nil
        }
    }
    
    ///获取随机数
    func generateTradeNumber(count number:Int) -> String {
        
        let count = max(number, 1)
        
        let kNumber = 15
        let sourceStr = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        var resultStr = ""
        arc4random_stir()
        for _ in 0..<count {
            let index = Int(arc4random_uniform(UInt32(sourceStr.count)))
            let oneStr = String(sourceStr[sourceStr.index(sourceStr.startIndex, offsetBy: index)])
            resultStr.append(oneStr)
        }
        return resultStr
    }
    
    ///获取时间戳
    func getNowTimeTimestamp3() -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        formatter.dateFormat = "YYYY-MM-dd HH:mm:ss SSS"
        let timeZone = TimeZone(identifier: "Asia/Shanghai")
        formatter.timeZone = timeZone
        let dateNow = Date()
        let timeSp = "\(Int(dateNow.timeIntervalSince1970 * 1000))"
        return timeSp
    }
    
    /// sha1加密处理
    /// @param str 需要处理的字符串
    func sha1(with str: String) -> String {
        if let cstr = str.cString(using: .utf8) {
            let data = Data(bytes: cstr, count: str.lengthOfBytes(using: .utf8))
            var digest = [UInt8](repeating: 0, count: Int(CC_SHA1_DIGEST_LENGTH))
            _ = data.withUnsafeBytes {
                CC_SHA1($0.baseAddress, numericCast(data.count), &digest)
            }
            var output = ""
            for byte in digest {
                output += String(format: "%02x", byte)
            }
            return output
        }
        return ""
    }
    
    /**
     * 加密方式,MAC算法: HmacSHA256
     *  @param secret       秘钥
     *  @param content 要加密的文本
     *  @return 加密后的字符串
     */
    func hmacSHA256(withSecret secret: String, content: String) -> String {
        if let cKey = secret.cString(using: .ascii), let cData = content.cString(using: .utf8) {
            var cHMAC = [UInt8](repeating: 0, count: Int(CC_SHA256_DIGEST_LENGTH))
            CCHmac(CCHmacAlgorithm(kCCHmacAlgSHA256), cKey, Int(strlen(cKey)), cData, Int(strlen(cData)), &cHMAC)
            
            let hmacData = Data(bytes: cHMAC, count: Int(CC_SHA256_DIGEST_LENGTH))
            var hmacString = ""
            for byte in hmacData {
                hmacString += String(format: "%02x", byte)
            }
            return hmacString
        }
        return ""
    }
    
}
