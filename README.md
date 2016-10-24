智慧醫療暨大數據分析實驗室網站
===

基本架構
--------

    ---index.php(主程式)
        |- js (放置所有js檔案)
        |- css (放置所有css檔案)
        |- img (放置所有img檔案)
        |- database (放置所有database檔案)

安裝方式
--------

1. 將lab資料夾放入wamp server之www資料夾底下
2. 將database資料夾下的lab20160921.sql匯入phpmyadmin
3. 電腦IP/lab 即為網址

index.php技術細節
--------

連結網址到index.php時需傳入page參數, 例如：

    http://192.168.137.16/lab?page=result

若無傳入參數,例如：

    http://192.168.137.16/lab

則index.php預設為page為first,等同於連結至

    http://192.168.137.16/lab?page=first

未來網站規劃
--------

1. 將後端技術全面替換為<a href="https://nodejs.org/en/">node.js</a>
2. 將前端技術替換為<a href="https://angular.io/">angular.js</a>
3. 新增後臺管理介面