let data = [{ start: 1648146726878, event: 'gtm.js', uniqueEventId: 3 },
{ event: 'analyticsEvent', uniqueEventId: 5 },
{ event: 'virtualPageview', virtualPageURL: '/shop/checkout/internet', virtualPageTitle: 'Checkout - Internet', uniqueEventId: 7 },
{ start: 1648146726878, event: 'gtm.js', uniqueEventId: 3 },
{ event: 'analyticsEvent', uniqueEventId: 5 },
{ event: 'virtualPageview', virtualPageURL: '/shop/checkout/TV', virtualPageTitle: 'Checkout - Internet', uniqueEventId: 9 },
{ start: 1648146726878, event: 'gtm.js', uniqueEventId: 3 },
{ event: 'analyticsEvent', uniqueEventId: 5 },
{ event: 'virtualPageview', virtualPageURL: '/shop/checkout/cable', virtualPageTitle: 'Checkout - Internet', uniqueEventId: 7 },
{ start: 1648146726878, event: 'gtm.js', uniqueEventId: 3 },
{ event: 'analyticsEvent', uniqueEventId: 5 },
{ event: 'virtualPageview', virtualPageURL: '/shop/checkout/checkout', virtualPageTitle: 'Checkout - Internet', uniqueEventId: 11 },
{ event: 'virtualPageview', virtualPageURL: '/shop/checkout/cable', virtualPageTitle: 'Checkout - Internet', uniqueEventId: 7 },
{ event: 'virtualPageview', virtualPageURL: '/shop/checkout/Testing', virtualPageTitle: 'Checkout - Internet', uniqueEventId: 11 },
{ start: 1648146726878, event: 'gtm.js', uniqueEventId: 3 },
{ event: 'analyticsEvent', uniqueEventId: 5 },
{ event: 'analyticsEvent', uniqueEventId: 5 },
{ event: 'virtualPageview', virtualPageURL: '/shop/checkout/internet', virtualPageTitle: 'Checkout - Internet', uniqueEventId: 7 },
{ start: 1648146726878, event: 'gtm.js', uniqueEventId: 3 },
{ event: 'analyticsEvent', uniqueEventId: 5 },
{ event: 'virtualPageview', virtualPageURL: '/shop/checkout/TV', virtualPageTitle: 'Checkout - Internet', uniqueEventId: 9 },
{ start: 1648146726878, event: 'gtm.js', uniqueEventId: 3 },
{ event: 'analyticsEvent', uniqueEventId: 5 },
{ event: 'virtualPageview', virtualPageURL: '/shop/checkout/cable', virtualPageTitle: 'Checkout - Internet', uniqueEventId: 7 },
{ start: 1648146726878, event: 'gtm.js', uniqueEventId: 3 },
{ event: 'analyticsEvent', uniqueEventId: 5 },
{ event: 'virtualPageview', virtualPageURL: '/shop/checkout/checkout', virtualPageTitle: 'Checkout - Internet', uniqueEventId: 11 },
{ event: 'virtualPageview', virtualPageURL: '/shop/checkout/cable', virtualPageTitle: 'Checkout - Internet', uniqueEventId: 7 },
{ event: 'virtualPageview', virtualPageURL: '/shop/checkout/UNIQUE', virtualPageTitle: 'Checkout - Internet', uniqueEventId: 11 },
{ start: 1648146726878, event: 'gtm.js', uniqueEventId: 3 },
{ event: 'analyticsEvent', uniqueEventId: 5 },
]




Invoca.Client.getCheckout= function(){

    let foundPageView =[];
    for (let i=0;i<dataLayer.length;i++){ 
        if(dataLayer[i].event === 'virtualPageview'){
            foundPageView.push(dataLayer[i].virtualPageURL)
        }
    }
    console.log(foundPageView)
    console.log(foundPageView[foundPageView.length-1])
}

getCheckout(data);

