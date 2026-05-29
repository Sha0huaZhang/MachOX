# MachOX

**SHA256**

MachOX_force : 541539ffb9a8dabf1afed6f00b216c81c5f46158db6e5dd4b139be8d2a60ba75    

MachOX_force.zip : 7f07e6cbe88b759f8c83c6a2ec8617b4e0585e960eed84fdfc7342f8d2d40573  

 **This tool is built upon / 本工具基于以下技术构建：**    

**PerfectCheater** : CoreTrust Bypass vulnerability       


# Utility/用途

To bypass CoreTrust's signature verification on iOS 16.7(20H19) & iOS 17.0.1 and higher versions.    
    在 iOS 16.7(20H19) & iOS 17.0.1 及更高版本绕过CoreTrust的签名验证


# Support Version/支持版本

| Version (iOS 16) | From   | To   |
|-------------|--------------|----|
| Unsupported | iOS 16.0 | iOS 16.7 RC  |
| Supported   | iOS 16.7   | iOS 16.7.x |

| Version (iOS 17) | From   | To   |
|-------------|--------------|----|
| Unsupported | iOS 17.0 | iOS 17.0  |
| Supported   | iOS 17.0.1 | iOS 17.0.1 |
| Unsupported | iOS 17.0.2 | iOS 17.7.x |

#  Disclosure Status/披露状态

This tool implements a CoreTrust bypass vulnerability on iOS 16.7 (20H19) - 16.7.x and 17.0.1.

- **Reported to Apple:** May 5, 2026 (Report ID: OE110620235331)
- **Apple Response:** Report closed on May 28, 2026, security impact not acknowledged
- **Current Status:** No fix issued, no CVE assigned

Apple's final response stated:

> "the testing needs to be done on Apple hardware and not in a simulator... We are closing this report and will not be providing any more updates."

Given that Apple has not fixed this issue within a reasonable timeframe, this tool is released to protect users and promote community research.

---    

本工具实现了 iOS 16.7 (20H19) - 16.7.x 和 17.0.1 上的 CoreTrust 绕过漏洞。

- **向 Apple 报告时间：** 2026 年 5 月 5 日（报告编号：OE110620235331）
- **Apple 回复：** 于 2026 年 5 月 28 日关闭报告，未确认安全影响
- **当前状态：** 未发布修复，未分配 CVE

Apple 的最终回复称：

> "测试需要在 Apple 硬件上进行，而不是在模拟器中……我们将关闭此报告，并不会提供进一步的更新。"

鉴于 Apple 未在合理时间内修复此问题，为保护用户安全并促进社区研究，决定公开本工具。

**Full disclosure history/完整披露历史：**   

[docs/disclosure.md](docs/disclosure.md)

#  Usage/使用方法

**Sign up an Apple Developer account/注册Apple Developer账号** (If not signed up)（如果尚未注册）
    

**Build MachOX/构建 MachOX (If it isn't precompilation binary/如果不是预编译的二进制)**

In Terminal, run    
    在终端运行    

        git clone https://github.com/Sha0huaZhang/MachOX.git
        cd MachOX
        make

**Get your Team ID/获取你的 Team ID**    
      
In Terminal, run    
    在终端运行    
        
        security find-identity -v -p basic | grep "Apple Development"


Copy the Team ID from the output (e.g., `A11A111AAA`)    
    从输出中获取你的 Team ID （如`A11A111AAA`）

**Sign your file/签名文件**    

In Terminal, run    
    在终端运行    
        
        ./MachOX -i dummy -o ~/Desktop/helper_resign -t YOUR_TEAM_ID
        
**Verify the output/验证输出**    

The signed helper will be saved to your Desktop as `helper_resign`.    
    签名后的 Helper 文件将保存在你的桌面，文件名为 `helper_resign`。
    
# Parameters/参数    

| Parameter |                         Description                            |
|-----------|----------------------------------------------------------------|
| `-i`      | Input file (any dummy file, built-in template will replace it) |
| `-o`      | Output file path                                               |
| `-t`      | Your Team ID (from step 1)                                     |


    
|    参数    |                     内容                       |
|-----------|---------------------------------------------  |
| `-i`      | 输入文件 （任意文件均可，MachOX 会使用内置模板覆盖它）  |
| `-o`      | 输出文件路径                                     |
| `-t`      | 你的 Team ID （从步骤1获取）                      |


# License / 许可证

This project is licensed under the **MIT License**    

本项目遵循 **MIT 协议**

# Credit/致谢   
(in alphabetical/按首字母排列)

Lars Fröder (@opa334)[https://GitHub.com/opa334](https://GitHub.com/opa334) :  ChOma    
Sha0huaZhang [https://GitHub.com/Sha0huaZhang](https://GitHub.com/Sha0huaZhang) : PerfectCheater (CoreTrust Bypass)



