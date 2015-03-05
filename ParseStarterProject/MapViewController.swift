import UIKit

// MapKit framework をimport
import MapKit

// MKMapViewDelegate の追加
class MapViewController: UIViewController, MKMapViewDelegate {
    
    @IBOutlet var mapView:MKMapView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Delegate をセット
        self.mapView?.delegate = self
        
        // 緯度・軽度を設定
        var location:CLLocationCoordinate2D
        = CLLocationCoordinate2DMake(36.077182,139.651903)
        
        mapView?.setCenterCoordinate(location,animated:true)
        
        // 縮尺を設定
        var region:MKCoordinateRegion = self.mapView!.region
        region.center = location
        region.span.latitudeDelta = 0.025
        region.span.longitudeDelta = 0.025
        
        self.mapView!.setRegion(region,animated:true)
        
        // 表示タイプを航空写真と地図のハイブリッドに設定
        self.mapView!.mapType = MKMapType.Hybrid
        
        // view に追加
        self.view.addSubview(self.mapView!)
       
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
