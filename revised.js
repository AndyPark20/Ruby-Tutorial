options.autoRun =false;
console.log('hello Revision')
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

var referralDomain = Invoca.Tools.parseDomainFromFullUrl(Invoca.referrer).slice(1);
var currentDomain  = Invoca.Tools.parseDomainFromFullUrl(location.href).slice(1);

// This is checking function for required values to swap, currently only one value, additional values should be added to the sourceValues Array
function checkValuesToSwapOn(value) {
  return value === utm_sourcePresent || value === buildMedium()[0] || value === buildSource()[1];
}

//function to build utm_medium based on if S variable is present
function buildMedium(){
    return s?"paid search":"organic";
}

//function to build utm_source based on document.referrer 
function buildSource(){
    if (referralDomain !== currentDomain) {
    
        var urlArray = document.referrer.split("/")[2].split["."];
        options.poolParams.utm_source = urlArray[1]+"."+urlArray[2];
       
      } else {
        return Invoca.Tools.readInvocaData("utm_source");
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