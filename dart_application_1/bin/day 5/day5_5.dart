abstract class Institute {
  void courseOffered() {
    print('Courses Offered : C,C++,Java,Kotlin');
  }

  void address() {} //Abstract class
}

class PaperAds {
  void PaperName() {}
}

class OnlineAds {
  void OnlineMedium() {}
}

class Technoedge extends Institute implements PaperAds, OnlineAds {
  @override
  void address() {
    print('Hyderabab');
  }

  @override
  void PaperName() {
    print('Print on Hitvada');
  }

  @override
  void OnlineMedium() {
    print('Medium of Online ads is : facebook , insta , youtube');
  }
}

class SekharOnlineClasses extends Institute implements OnlineAds {
  @override
  
    void courseOffered(){}
    super.courseOffered(){
     print('Advanced Course  : Flutter , xmarin , android studio');

    }
  @override
  void address() {
    print('Pune');
  }

  @override
  void OnlineMedium() {
    print("Facebook only");
  }
}

void main(List<String> args) {
  var te = Technoedge();
  te.courseOffered();
  te.address();
  te.PaperName();
  te.OnlineMedium();
  print('---------------------------------');
  var soc = SekharOnlineClasses();
  soc.courseOffered();
  soc.address();
  soc.OnlineMedium();
}
