options.autoRun =false;
console.log('hello')
//call allowedClientSideParams to utilize readInvocaData
try {
  Invoca.Tools.allowedClientSideParams(["utm_source","dclid","s",'gclsrc','msclkid','gclid']);
} catch (error) {
  console.log(error);
}
options.integrations.googleAnalytics = true;


var utm_sourcePresent = Invoca.Tools.readUrl('utm_source') || Invoca.Tools.readInvocaData('utm_source');
var dClid =Invoca.Tools.readUrl('dclid') || Invoca.Tools.readInvocaData('dclid');
var s = Invoca.Tools.readUrl('s') || Invoca.Tools.readInvocaData('s');
var gclsrcPresent = Invoca.Tools.readUrl('gclsrc') || Invoca.Tools.readInvocaData('gclsrc');
var msclkidPresent = Invoca.Tools.readUrl('msclkid') || Invoca.Tools.readInvocaData('msclkid');
var gclidPresent = Invoca.Tools.readUrl('gclid') || Invoca.Tools.readInvocaData('gclid');


var sourceValues = ["facebook.com", "google.com","bing.com", "cruisecritic.com"];

// This is checking function for required values to swap, currently only one value, additional values should be added to the sourceValues Array
function checkValuesToSwapOn(value) {
  return value === utm_sourcePresent || value === buildMediumSource()[0] || value === buildMediumSource()[1];
}

//Function to capture Organic sources to last touch attribution
function buildMediumSource() {
   
  var referralDomain = Invoca.Tools.parseDomainFromFullUrl(Invoca.referrer).slice(1);
  var currentDomain  = Invoca.Tools.parseDomainFromFullUrl(location.href).slice(1);
  


  // this is here to avoid updating the referral on clicks through the website
 if (referralDomain !== currentDomain) {
    
    return Invoca.Tools.parseReferrer({
      "google.com": ["organic", "google.com"],
      "bing.com":   ["organic", "bing.com"],
      "cruisecritic.com":  ["referral", "cruisecritic.com"],
      "facebook.com":["referral", "facebook.com"],
    }, ["referral", referralDomain], null, "topLevelDomain");
   
  } else {
    return [Invoca.Tools.readInvocaData("utm_medium"), Invoca.Tools.readInvocaData("utm_source")];
  }
  
}
  
// Identify & Attribute the utm_medium Media Channel and utm_source. Pick first item in array for medium and second item in array for source
options.poolParams = {
  utm_medium: Invoca.Tools.readUrl("utm_medium") || buildMediumSource()[0],
  utm_source: Invoca.Tools.readUrl("utm_source") || buildMediumSource()[1]
};


 

// Function to check if the required parameters are met to set shouldSwap to true or false so that autoRun can be updated
Invoca.Client.shouldRun=function(){
  var swapUtm_source = sourceValues.some(checkValuesToSwapOn);
  var shouldswap = false;
   if (gclidPresent || msclkidPresent  || gclsrcPresent || swapUtm_source || s|| dClid || buildMediumSource()[0] === 'organic' || Invoca.Tools.readInvocaData('utm_medium') === 'organic'){
    shouldSwap = true;
  }else{
    shouldSwap=false;
  }
  return shouldSwap;
};
 

options.autoRun = Invoca.Client.shouldRun();
return options;