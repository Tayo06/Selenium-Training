package stepDefinition;

import org.junit.Assert;
import org.openqa.selenium.By;

import browserControls.BaseClass;
import cucumber.api.java.en.Then;


public class SearchResultsPageStepDefinitions extends BaseClass {
	
// Private variables (Locators)
	private String searchResultTextField ="//a[@id='bcKwText']";
	
	
	// Step definitions 
	
	@Then("I should see search results for {string}")
	public void i_should_see_search_results_for(String searchText) {
	    String text = browser.findElement(By.xpath(searchResultTextField)).getText();
	    Assert.assertTrue(text.contains(searchText));
	    
	}

}
