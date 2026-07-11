# ============================================================
# Cloudflare Turnstile 绕过工具 - 单浏览器版本（推荐）
# 基于 SeleniumBase UC Mode
# 支持 Mac / Windows / Linux
# ============================================================

import os
import sys
import time
import json
import platform
from datetime import datetime
from pathlib import Path
from typing import Optional, Dict, Any

from seleniumbase import SB


def is_linux() -> bool:
    """检测是否为Linux系统"""
    return platform.system().lower() == "linux"


def setup_display():
    """设置Linux虚拟显示"""
    if is_linux() and not os.environ.get("DISPLAY"):
        try:
            from pyvirtualdisplay import Display
            display = Display(visible=False, size=(1920, 1080))
            display.start()
            os.environ["DISPLAY"] = display.new_display_var
            print("[*] Linux: 已启动虚拟显示 (Xvfb)")
            return display
        except ImportError:
            print("[!] 请安装: pip install pyvirtualdisplay")
            print("[!] 以及: apt-get install -y xvfb")
            sys.exit(1)
        except Exception as e:
            print(f"[!] 启动虚拟显示失败: {e}")
            sys.exit(1)
    return None


def bypass_cloudflare(
    url: str,
    proxy: Optional[str] = None,
    timeout: float = 60.0,
    save_cookies: bool = True
) -> Dict[str, Any]:
    """
    绕过 Cloudflare 验证并获取 Cookie（单浏览器模式）
    
    参数:
        url: 目标网站URL
        proxy: 代理地址（可选，格式: http://host:port）
        timeout: 超时时间（秒）
        save_cookies: 是否保存Cookie到文件
    
    返回:
        {
            "success": bool,
            "cookies": dict,
            "cf_clearance": str,
            "user_agent": str,
            "error": str
        }
    """
    result = {
        "success": False,
        "cookies": {},
        "cf_clearance": None,
        "user_agent": None,
        "error": None
    }
    
    try:
        print(f"[*] 目标: {url}")
        if proxy:
            print(f"[*] 代理: {proxy}")
        
        # 启动浏览器
        with SB(uc=True, test=True, locale="en", proxy=proxy) as sb:
            print("[*] 浏览器已启动，正在加载页面...")
            
            # 打开页面
            sb.uc_open_with_reconnect(url, reconnect_time=5.0)
            time.sleep(2)
            
            # 检测Cloudflare验证
            page_source = sb.get_page_source().lower()
            cf_indicators = ["turnstile", "challenges.cloudflare", "just a moment", "verify you are human"]
            
            if any(x in page_source for x in cf_indicators):
                print("[*] 检测到 Cloudflare 验证，正在处理...")
                try:
                    sb.uc_gui_click_captcha()
                    time.sleep(3)
                except Exception as e:
                    print(f"[!] 点击验证码出错: {e}")
            
            # 获取Cookie
            cookies_list = sb.get_cookies()
            result["cookies"] = {c["name"]: c["value"] for c in cookies_list}
            result["cf_clearance"] = result["cookies"].get("cf_clearance")
            result["user_agent"] = sb.execute_script("return navigator.userAgent")
            
            if result["cf_clearance"]:
                result["success"] = True
                print(f"[+] 成功获取 cf_clearance!")
                
                # 保存Cookie
                if save_cookies:
                    save_dir = Path("output/cookies")
                    save_dir.mkdir(parents=True, exist_ok=True)
                    ts = datetime.now().strftime("%Y%m%d_%H%M%S")
                    
                    # JSON格式
                    with open(save_dir / f"cookies_{ts}.json", "w", encoding="utf-8") as f:
                        json.dump({
                            "url": url,
                            "cookies": result["cookies"],
                            "user_agent": result["user_agent"],
                            "timestamp": ts
                        }, f, indent=2, ensure_ascii=False)
                    
                    # Netscape格式
                    with open(save_dir / f"cookies_{ts}.txt", "w") as f:
                        f.write("# Netscape HTTP Cookie File\n")
                        for c in cookies_list:
                            domain = c.get("domain", "")
                            secure = "TRUE" if c.get("secure") else "FALSE"
                            expiry = int(c.get("expiry", 0))
                            f.write(f"{domain}\tTRUE\t{c.get('path', '/')}\t{secure}\t{expiry}\t{c['name']}\t{c['value']}\n")
                    
                    print(f"[+] Cookie已保存到: {save_dir}")
            else:
                result["error"] = "未获取到 cf_clearance"
                print(f"[-] {result['error']}")
                
    except Exception as e:
        result["error"] = str(e)
        print(f"[-] 错误: {e}")
    
    return result


# ============================================================
# 命令行入口
# ============================================================
if __name__ == "__main__":
    import argparse
    
    parser = argparse.ArgumentParser(
        description="Cloudflare Turnstile 绕过工具 (单浏览器模式)",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""
示例:
  python bypass.py https://example.com
  python bypass.py https://example.com -p http://127.0.0.1:7890
        """
    )
    parser.add_argument("url", help="目标URL")
    parser.add_argument("-p", "--proxy", help="代理地址")
    parser.add_argument("-t", "--timeout", type=float, default=60.0, help="超时时间 (默认: 60秒)")
    parser.add_argument("--no-save", action="store_true", help="不保存Cookie")
    args = parser.parse_args()
    
    # Linux虚拟显示
    display = setup_display()
    
    print("\n" + "="*50)
    print("Cloudflare Turnstile 绕过工具")
    print(f"系统: {platform.system()} {platform.release()}")
    print("="*50 + "\n")
    
    # 执行绕过
    result = bypass_cloudflare(
        url=args.url,
        proxy=args.proxy,
        timeout=args.timeout,
        save_cookies=not args.no_save
    )
    
    # 输出结果
    print("\n" + "-"*50)
    if result["success"]:
        print(f"[OK] 成功 | Cookie数: {len(result['cookies'])}")
        print(f"[OK] cf_clearance: {result['cf_clearance'][:50]}...")
    else:
        print(f"[FAIL] 失败: {result['error']}")
    print("-"*50 + "\n")
    
    # 清理
    if display:
        display.stop()
