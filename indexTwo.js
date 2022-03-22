// params to be stored client side as part of the SSA migration
// this list must be kept in sync with any use of readInvocaData
try {
    Invoca.Tools.allowedClientSideParams(['gcm_uid', 'gclid', 'msclkid','fbclid','gclsrc','gbraid','wbraid','utm_source', 'utm_medium']);
  } catch (error) {
    console.log(error);
  }
  options.integrations.googleAnalytics = true;
  
  function useGCM() {
    if (Invoca.Tools.readUrl("gclid") || Invoca.Tools.readInvocaData("gclid")) {
      return null;
    } else {
      return Invoca.Tools.readUrl("gcm_uid") || 
             Invoca.Tools.readCookie("gcm_uid") ||
             Invoca.Tools.readInvocaData("gcm_uid");
    }
  }
  
  options.poolParams.gcm_uid = useGCM();
  
  var gclidPresent = Invoca.Tools.readUrl('gclid') || Invoca.Tools.readInvocaData('gclid');
  var msclkidPresent = Invoca.Tools.readUrl('msclkid') || Invoca.Tools.readInvocaData('msclkid');
  var fbclidPresent = Invoca.Tools.readUrl('fbclid') || Invoca.Tools.readInvocaData('fbclid');
  var gclsrcPresent = Invoca.Tools.readUrl('gclsrc') || Invoca.Tools.readInvocaData('gclsrc');
  var gbraidPresent = Invoca.Tools.readUrl('gbraid') || Invoca.Tools.readInvocaData('gbraid');
  var wbraidPresent = Invoca.Tools.readUrl('wbraid') || Invoca.Tools.readInvocaData('wbraid');
  var utm_sourcePresent = Invoca.Tools.readUrl('utm_source') || Invoca.Tools.readInvocaData('utm_source');
  var utm_mediumePresent = Invoca.Tools.readUrl('utm_medium') || Invoca.Tools.readInvocaData('utm_medium');
  var sourceValues = ["zillow","Zillow", "organic", "Organic"];
  
  // This is the the checking function for required values to swap, currently only one value, additional values should be added to the sourceValues Array
  function checkValuesToSwapOn(value) {
    return value === utm_sourcePresent || value === utm_mediumePresent;
    // return value === utm_mediumePresent;
  }
  
  // Moved INVSRC logic for running into this function, as customer wants to swap at all times for previous parameters, but only when utm_source is zillow.  The required param in UI does not allow for this additional requirement.  
  Invoca.Client.shouldSwap = function () {
    var swapUtm_source = sourceValues.some(checkValuesToSwapOn);
    
    if (gclidPresent || msclkidPresent || fbclidPresent || gclsrcPresent || gbraidPresent || wbraidPresent || swapUtm_source){
      return true;
    } else {
    return false;
    }
  }
  
  // Client leverages replace any number, so limiting autoSwap rather than autoRun to evaluate for required params
  options.autoRun = Invoca.Client.shouldSwap();
  
  return options;