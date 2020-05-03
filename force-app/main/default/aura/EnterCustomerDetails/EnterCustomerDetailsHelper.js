({
    helphandleCustomerInformation : function(component, event, helper) {
      /*  var appEvent = $A.get("e.c:PaymentDetailsevt");
         evt.setParams({
           
        }); */
        var payload = event.getParams().response;
        var action = component.get("c.relatetoAcc");
        action.setParams({
            conId : payload.id
        });
        action.setCallback(this,function(a){
            var result =  a.getReturnValue();
            alert(result);
        });      
        
        $A.enqueueAction(action);
     //   appEvent.fire();
    }
})