//**************************************************
// MAILER HANDLER
//**************************************************

//**************************************************
function runMailClient(EMail)
{
	if(!EMail)
	{
		return;
	}
	var eAdd = new String("") + EMail.replace(" zavinac ", "@");
	eAdd = eAdd.replace(/\$/igm, ".");
	document.location = "mailto:" + eAdd;
}