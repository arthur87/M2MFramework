M2MFramework
============

M2Mに関するSwiftライブラリです。


M2MVieraController
-------------------

パナソニック VIERA(ビエラ)をネットワーク経由で操作します。


    NSURLConnection(request: M2MVieraController.sharedInstance.request("10.0.1.2", code: .D1), delegate: self)
