# 🌙 Moonlight Cherry 書城

## 📚 專案簡介

Moonlight Cherry 書城是一個精心設計的電子書閱讀應用，專為愛好經典文學、歷史和哲學的讀者打造。應用提供多種公有領域(Public Domain)的經典著作，讓使用者能夠隨時隨地享受閱讀的樂趣。

## ✨ 主要特色
豐富的書籍分類：包含文學類、歷史類、哲學類等多種分類
每日推薦：精選推薦書籍，發現新的閱讀樂趣
簡潔優雅的界面：精心設計的UI，提供舒適的閱讀體驗
完整書籍內容：提供完整的經典著作，如《傲慢與偏見》、《沉思錄》等
跨平台支援：支援iOS、Android、Windows、macOS和Web等多個平台

## 📂 專案結構

```
lib/
├── datas/              # 數據模型
├── pages/              # 主要頁面
├── widgets/            # 可重用組件
└── main.dart           # 應用入口點

assets/
├── book_full_text/     # 書籍全文
├── cover_images/       # 書籍封面
└── images/             # 其他圖片資源
```

## 📱 主要頁面

### 📖 推薦頁面
推薦頁面展示每日精選推薦書籍和不同類別的熱門書籍，使用者可以水平滑動瀏覽各類書籍。

### 📚 圖書館頁面
圖書館頁面以網格方式展示所有書籍類別，使用者可以點擊類別進入對應的分類頁面瀏覽該類別下的所有書籍。

### 📑 閱讀頁面
閱讀頁面提供簡潔、清晰的閱讀界面，讓使用者能夠專注於閱讀體驗。

### 🛠️ 技術細節
框架：Flutter
語言：Dart
設計風格：Material Design
資源管理：使用Flutter的資源管理機制
自定義組件：BookCard、BookCategoryCard等