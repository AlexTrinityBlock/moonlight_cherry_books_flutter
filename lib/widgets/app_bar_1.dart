import 'package:flutter/material.dart';

/// AppBar1 是應用程式的自定義頂部導航欄元件
/// 繼承自 StatelessWidget 表示它是一個不可變的 Widget
/// 實現 PreferredSizeWidget 介面是為了讓 Flutter 可以正確處理 AppBar 的高度
class AppBar1 extends StatelessWidget implements PreferredSizeWidget{
  /// 建構函式
  /// [key] 用於識別 Widget 的唯一標識符
  const AppBar1({Key? key}) : super(key: key);
  
  /// 構建 Widget 的方法
  /// [context] 包含 Widget 位置及其可用資源的資訊
  /// 返回一個標準的 AppBar，設定應用程式名稱為標題
  @override
  Widget build(BuildContext context){
    return AppBar(
      title: const Text(
        'Moon light Cherry 書城',
        style: TextStyle(
          color: Color.fromARGB(255, 39, 35, 67)
        ),
      ),
      // 背景顏色，採用色碼
      backgroundColor: Color.fromARGB(255, 186, 232, 232)
    );
  }
  
  /// 實現 PreferredSizeWidget 介面所需的 getter
  /// 定義此 AppBar 的首選高度，使用 Flutter 的標準工具列高度常數
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}