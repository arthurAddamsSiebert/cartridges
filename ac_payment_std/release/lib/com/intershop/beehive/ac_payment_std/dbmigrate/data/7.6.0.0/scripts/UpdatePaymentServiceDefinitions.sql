DECLARE
	PROCEDURE updatePaymentServiceDefinition(oldID IN VARCHAR2, newID IN VARCHAR2) AS
		BEGIN
			staging.update_table('ServiceDefinitionKey', 
				'SET SERVICEDEFINITIONID='''||newID||''', NAME='''||newID||''' WHERE SERVICEDEFINITIONID='''||oldID||'''');
		END updatePaymentServiceDefinition;
BEGIN
	updatePaymentServiceDefinition('PaymentInvoiceServiceDefinition', 'InvoicePaymentServiceDefinition');
	updatePaymentServiceDefinition('PaymentCashAdvanceServiceDefinition', 'CashInAdvancePaymentServiceDefinition');
	updatePaymentServiceDefinition('PaymentCODServiceDefinition', 'CashOnDeliveryPaymentServiceDefinition');
	updatePaymentServiceDefinition('PaymentDebitTransferServiceDefinition', 'DirectDebitPaymentServiceDefinition');
END;
/