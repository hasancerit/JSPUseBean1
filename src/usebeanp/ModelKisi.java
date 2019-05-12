package usebeanp;

public class ModelKisi {
	private String ad,soyad,yas;
	
	public ModelKisi() {
	
	}
	
	public ModelKisi(String ad,String soyad,String yas) {
		super();
		this.ad = ad;
		this.soyad = soyad;
		this.yas = yas;
	}

	
	public String getYas() {
		return yas;
	}

	public void setYas(String yas) {
		this.yas = yas;
	}

	public String getSoyad() {
		return soyad;
	}

	public void setSoyad(String soyad) {
		this.soyad = soyad;
	}

	public String getAd() {
		return ad;
	}

	public void setAd(String ad) {
		this.ad = ad;
	}
	
}
