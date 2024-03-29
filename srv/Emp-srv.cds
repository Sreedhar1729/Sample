using {emp.db as db} from '../db/emp-model';
@path:'/EmpSRV'

service Empservice {
    entity Empservice as projection on db.Emp;
    entity address as projection on db.Address;
}
