# 가위바위보 게임 

> 화면 구성

<img src="https://github.com/seongwon030/swift/assets/105052068/a77fc478-5fea-4ff1-8d62-9e530300be35"/>


<p>라벨과 이미지뷰를 스택뷰로 감싼 뒤 ctrl 을 누른 상태로 스택뷰 자신에게 연결하여 Aspect Ratio 를 1대1 비율로 맞춰주었다.</p>
<p>그리고 하나의 스택뷰를 선택해 ctrl 을 눌러 옆에 같은 스택뷰를 복제했다. </p> 
<p>그 다음 두 스택뷰를 하나의 스택뷰로 감싸준다.</p><br>

<img src="https://github.com/seongwon030/swift/assets/105052068/1f6fe6b8-294c-4eda-a9b2-3c6ba38c7f68" />
<p>그 결과 가장 큰 스택뷰 안에 두 개의 스택뷰가 있는 것을 확인할 수 있다.</p><br>

<img src="https://github.com/seongwon030/swift/assets/105052068/856cf283-881b-4e72-a9fd-6bc5ffb378fb" />
<p>스택뷰 하단에 버튼을 하나 만들어준다.</p>
<p>배경색과 텍스트색을 설정해 준 다음 똑같이 ctrl을 눌러 2개를 복제했다.</p>
<p>해당 버튼들이 나란히 있어야 하므로 스택뷰로 묶어준 다음 Distribution 을 Fill Equally, 간격은 10으로 설정한다.</p><br>


<img width="148" alt="스크린샷 2024-01-27 17 25 13" src="https://github.com/seongwon030/swift/assets/105052068/6b8ee20d-54af-4150-b109-505b13f2b1ee"><br>
<a>위의 버튼 밑에 리셋 버튼도 추가하여 위와 같은 스택뷰로 묶는다.</a><br>
<a>그리고 요소들 모두 제약을 설정한다.</a><hr>

> 코드 작성


  <img width="283" alt="스크린샷 2024-01-27 17 50 45" src="https://github.com/seongwon030/swift/assets/105052068/1718888f-aa78-48a9-86f6-7713c0bb81bc"><br>
<a>바뀌는 라벨과 이미지는 viewDidLoad 위에 넣고, 버튼 동작은 viewDidLoad 아래에 넣어준다.</a>

<pre><code>
  class ViewController: UIViewController {
    
    
    @IBOutlet weak var mainLabel: UILabel!
    
    @IBOutlet weak var comImageView: UIImageView!
    @IBOutlet weak var myImageView: UIImageView!
    
    @IBOutlet weak var comChoiceLabel: UILabel!
    @IBOutlet weak var myChoiceLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func rpsButtonTapped(_ sender: UIButton) {
    }
    
    
    @IBAction func selectButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
    }
    
}
</code></pre><br>

<a> rpsButtonTapped 은 가위 버튼을 ctrl 로 드래그 하여 생성한다. 타입은 UIButton으로 한다.</a><br>

<img width="596" alt="스크린샷 2024-01-27 17 57 39" src="https://github.com/seongwon030/swift/assets/105052068/bc62b36d-8208-4e5f-8d4c-f8cead38f4b5"><br>
<a>가위 버튼 코드 왼쪽에 동그라미 부분을 눌러 바위와 보 버튼으로 드래그한다. 이렇게하면 세 개의 버튼이 같은 동작을 수행하게 된다.</a>

<hr>
> 코드 완성
<br>
* 이미지 넣는 방법
1. "#imageLiteral(" 을 하면 assets 파일에 있는 이미지를 선택할 수 있다.
2. UIImage(named: ) 로 assets 파일 안에 있는 이미지 이름을 쓰면 된다.<br>
<pre><code>
  comImageView.image = #imageLiteral(resourceName: "ready")
        myImageView.image = UIImage(named: "ready.png")
</code></pre>

