//
//  ViewController.swift
//  Sahibinden
//
//  Created by Gizem Yavuz on 4.05.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var kategorilerTableView: UITableView!
    var kategorilerListe = [Kategoriler]()
    override func viewDidLoad() {
        super.viewDidLoad()
        kategorilerTableView.delegate = self
        kategorilerTableView.dataSource = self
        self.navigationItem.title = "Sahibinden"
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = UIColor(named: "anaRenk")
        appearance.titleTextAttributes = [.foregroundColor:UIColor(named: "yaziRenk")!]
        navigationController?.navigationBar.standardAppearance =  appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
     
        let logoImage = UIImage.init(named: "11")
            let logoImageView = UIImageView.init(image: logoImage)
            logoImageView.frame = CGRect(x:0.0,y:0.0, width:60,height:25.0)
            logoImageView.contentMode = .scaleAspectFit
            let imageItem = UIBarButtonItem.init(customView: logoImageView)
            let widthConstraint = logoImageView.widthAnchor.constraint(equalToConstant: 60)
            let heightConstraint = logoImageView.heightAnchor.constraint(equalToConstant: 25)
             heightConstraint.isActive = true
             widthConstraint.isActive = true
             navigationItem.leftBarButtonItem =  imageItem
        
        
        let u1 = Kategoriler(kategoriId: 1, kategoriAdi: "Emlak", kategoriResimAdi: "1", kategoriAciklama: "Konut, İş Yeri, Arsa, Projeler, Bina, Devre Mülk")
        let u2 = Kategoriler(kategoriId: 2, kategoriAdi: "Vasıta", kategoriResimAdi: "2", kategoriAciklama: "Otomobil, Arazi, SUV & Pickup, Motosiklet")

        let u3 = Kategoriler(kategoriId: 3, kategoriAdi: "Yedek Parça, Aksesuar, Donanım & Tuning", kategoriResimAdi: "3", kategoriAciklama: "Otomotiv Ekipmanları, Motosiklet Ekipmanları")
        let u4 = Kategoriler(kategoriId: 4, kategoriAdi: "İkinci El ve Sıfır Alışveriş", kategoriResimAdi: "4", kategoriAciklama: "Bilgisayar, Cep Telefonu, Fotoğraf & Kamera")
        let u5 = Kategoriler(kategoriId: 5, kategoriAdi: "İş Makineleri & Sanayi", kategoriResimAdi: "5", kategoriAciklama: "İş Makineleri, Tarım Makineleri, Sanayi, Elektrik & Eneji")
        let u6 = Kategoriler(kategoriId: 6, kategoriAdi: "Ustalar ve Hizmetler", kategoriResimAdi: "6", kategoriAciklama: "Ev Tadilat & Dekorasyon, Nakliye, Araç Servis & Bakım")
        let u7 = Kategoriler(kategoriId: 7, kategoriAdi: "Özel Ders Verenler", kategoriResimAdi: "7", kategoriAciklama: "Lise & Üniversite, İlkokul & Ortaokul, Yabancı Dil")
        let u8 = Kategoriler(kategoriId: 8, kategoriAdi: "İş İlanları", kategoriResimAdi: "8", kategoriAciklama: "Avukatlık & Hukuki Danışmanlık, Eğitim, Eğlence ve Aktiviteler")
        let u9 = Kategoriler(kategoriId: 9, kategoriAdi: "Yardımcı Arayanlar", kategoriResimAdi: "9", kategoriAciklama: "Bebek & Çocuk Bakıcısı, Yaşlı & Hasta Bakıcısı")
        let u10 = Kategoriler(kategoriId: 10, kategoriAdi: "Hayvanlar Alemi", kategoriResimAdi: "10", kategoriAciklama: "Evcil Hayvanlar, Akvaryum Balıkları, Aksesuarlar")
        
        kategorilerListe.append(u1)
        kategorilerListe.append(u2)
        kategorilerListe.append(u3)
        kategorilerListe.append(u4)
        kategorilerListe.append(u5)
        kategorilerListe.append(u6)
        kategorilerListe.append(u7)
        kategorilerListe.append(u8)
        kategorilerListe.append(u9)
        kategorilerListe.append(u10)
    }
  
}

extension ViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kategorilerListe.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let kategori = kategorilerListe[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "kategoriHucre", for: indexPath)
        as! KategoriTableViewCell
        
        cell.kategoriImageView.image = UIImage(named: kategori.kategoriResimAdi!)
        cell.kategoriAdiImageView.text = kategori.kategoriAdi
        cell.kategoriAciklamaImageView.text = kategori.kategoriAciklama
        return cell
    }
}
