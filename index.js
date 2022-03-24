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
{ event: 'virtualPageview', virtualPageURL: '/shop/checkout/checkout', virtualPageTitle: 'Checkout - Internet', uniqueEventId: 11 }
]

let count =0

function getCheckout(arg){
    let checkoutLocation =''
    for (let i=0;i<arg.length;i++){ 
        if(i>=count && Object.values[i] == 'virtualPageview'){
            console.log(values[i].virtualPageUrl)
            count++;
        }
    }
}

getCheckout(data);