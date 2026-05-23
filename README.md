# MachOX
# Utility/用途

To Bypass CoreTrust's signature verification on iOS 16.7(20H19) & iOS 17.0.1 and higher versions.    
    在 iOS 16.7(20H19) & iOS 17.0.1 及更高版本绕过CoreTrust的签名验证
#  Usage/使用方法

**Sign up an Apple Developer account/注册Apple Developer账号** (If not signed up)（如果尚未注册）
    

**Build MachOX/构建 MachOX**

In Terminal ,run    
    在终端运行    

        git clone https://github.com/ShaOhuaZhang/MachOX.git
        cd MachOX
        make

**Get your Team ID/获取你的 Team ID**    
      
In Terminal ,run    
    在终端运行    
        
        security find-identity -v -p basic | grep "Apple Development"


Copy the Team ID from the output (e.g., `A11A111AAA`)    
    从输出中获取你的 Team ID （如`A11A111AAA`）

**Sign your file/签名文件**    

In Terminal ,run    
    在终端运行    
        
        ./MachOX -i dummy -o ~/Desktop/helper_resign -t YOUR_TEAM_ID
        
**3. Verify the output/验证输出**    

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




# Thanks/致谢       
Lars Fröder (@opa334) :  ChOma



