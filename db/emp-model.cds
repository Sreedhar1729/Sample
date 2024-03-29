namespace emp.db;

//using the reusable types
using {reusable.types as types} from './reusable-types';
using {
    cuid
} from '@sap/cds/common';

entity Emp : cuid {
    fname  : String;
    lname  : String;
    gender : String;
    email  : types.Email;
    phone  : types.PhoneNumber;
    address:Association  to Address;
}

entity Address : cuid {
    city:String not null;
    address:String not null;
    pincode:Integer not null;
    street:String;
    landmark:String;  
}
