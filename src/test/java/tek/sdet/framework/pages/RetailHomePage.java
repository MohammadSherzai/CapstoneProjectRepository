package tek.sdet.framework.pages;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import tek.sdet.framework.base.BaseSetup;

public class RetailHomePage extends BaseSetup{
	
	public RetailHomePage() {
		PageFactory.initElements(getDriver(), this);
	}
	
	
	@FindBy(xpath="//a[text()='TEKSCHOOL']")
	public WebElement logo;
	
	@FindBy(id="signinLink")
	public WebElement signInBttn;
	
	@FindBy(id="profileImage")
	public WebElement profileImg;
	
	@FindBy(xpath="//a[text()='Account']")
	public WebElement account;
	
	@FindBy(xpath="//span[text()='All']")
	public WebElement allSection;
	
	@FindBy(xpath="//span[text()='Electronics']")
	public WebElement electronicsOption;
	
	@FindBy(xpath="//span[text()='Computers']")
	public WebElement computersOption;
	
	@FindBy(xpath="//span[text()='Smart Home']")
	public WebElement smartHomeOption;
	
	@FindBy(xpath="//span[text()='Sports']")
	public WebElement sportsOption;
	
	@FindBy(xpath="//span[text()='Automative']")
	public WebElement automativeOption;
	
	@FindBy(xpath="//select[@id='search']")
	public WebElement category;
	
	@FindBy(xpath="//input[@class='search__input']")
	public WebElement searchInput;
	
	@FindBy(id="searchBtn")
	public WebElement searchBttn;
	
	@FindBy(xpath="//img[@class='image']")
	public WebElement plugItem;
	
	@FindBy(xpath="//option[text()='2']//parent::select[@class='product__select']")
	public WebElement quantity;
	
	@FindBy(xpath="//span[text()='Add to Cart']")
	public WebElement addToCartBttn;
	
	@FindBy(xpath="//span[text()='2']")
	public WebElement cartQuantity;
	
	@FindBy(xpath="//p[text()='Cart ']")
	public WebElement cartBttn;
	
	@FindBy(xpath="//button[text()='Proceed to Checkout']")
	public WebElement checkoutBttn;
	
	@FindBy(xpath="//button[@class='checkout__address-btn']")
	public WebElement cartAddAddress;
	
	@FindBy(xpath="//button[@class='checkout__payment-btn']")
	public WebElement cartPaymentLink;
	
	@FindBy(id="placeOrderBtn")
	public WebElement placeOrderBttn;
	
	@FindBy(xpath="//p[text()='Order Placed, Thanks']")
	public WebElement orderPlacedMsg;
	
	@FindBy(xpath="//span[text()='5']")
	public WebElement apexCartQty;
	
	@FindBy(xpath="//span[text()='TV & Video']")
	public WebElement tvAndVideo;
	
	@FindBy(xpath="//span[text()='Video Games']")
	public WebElement videoGames;
	
	@FindBy(xpath="//span[text()='Accessories']")
	public WebElement accessories;
	
	@FindBy(xpath="//span[text()='Networking']")
	public WebElement networking;
	
	@FindBy(xpath="//span[text()='Smart Home Lightning']")
	public WebElement smartHomeLighting;
	
	@FindBy(xpath="//span[text()='Plugs and Outlets']")
	public WebElement plugsAndOutlets;
	
	@FindBy(xpath="//span[text()='Athletic Clothing']")
	public WebElement athleticClothing;
	
	@FindBy(xpath="//span[text()='Exercise & Fitness']")
	public WebElement excerciseAndFitness;
	
	@FindBy(xpath="//span[text()='Automative Parts & Accessories']")
	public WebElement autoPartsAndAccessories;
	
	@FindBy(xpath="//span[text()='MotorCycle & Powersports']")
	public WebElement motorcycleAndPowersports;
	
	@FindBy(xpath="//span[text()=\"Delete\"]")
    public WebElement deleteFromCart;
	
	@FindBy(id="cartQuantity")
	public WebElement cartButtonQuantity;
	
	@FindBy(xpath="//img[@src='https://tek-retail-api.azurewebsites.net/images/products/7_8.jpg']")
	public WebElement apexItem;


	
	
	
	

}
