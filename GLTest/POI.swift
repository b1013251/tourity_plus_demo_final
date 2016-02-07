/*

    位置情報を定義

*/

import Foundation

/* 1つのバブルデータを管理する */
class POI {
    var latitude  : Double // 緯度
    var longitude : Double // 経度
    var altitude  : Double // 標高
    var message   : String // メッセージ
    var post_id   : Int    // 投稿ID
    var image_path : String // ファイルパス
    var movie_path : String // ファイルパス
    var posted_time : String //投稿時刻
    
    init(post_id : Int , latitude : Double , longitude : Double , altitude : Double , image_path : String, movie_path : String) {
        self.latitude  = latitude
        self.longitude = longitude
        self.altitude  = altitude
        self.message   = ""
        self.post_id   = post_id
        self.image_path = image_path
        self.movie_path = movie_path
        self.posted_time = ""
    }
    
    init(post_id : Int , latitude : Double , longitude : Double , altitude : Double , message : String , image_path : String , movie_path : String , posted_time : String) {
        self.latitude  = latitude
        self.longitude = longitude
        self.altitude  = altitude
        self.message   = message
        self.post_id   = post_id
        self.image_path = image_path
        self.movie_path = movie_path
        self.posted_time = posted_time
    }
}