import { LightningElement, wire } from 'lwc';
import FirstName from '@salesforce/schema/Contact.FirstName';
import LastName from '@salesforce/schema/Contact.LastName';
import Email from '@salesforce/schema/Contact.Email';
import getContacts from '@salesforce/apex/ContactController.getContacts';

const COLUMNS = [
    { label: 'FirstName', fieldName: FirstName.fieldApiName, type: 'text' },
    { label: 'LastName', fieldName: LastName.fieldApiName, type: 'text' },
    { label: 'Email', fieldName: Email.fieldApiName, type: 'email' }
];


export default class ContactList extends LightningElement {
    columns= COLUMNS;
    @wire(getContacts) 
    contacts;

}