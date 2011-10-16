package net.gumbix.dba.compandydemo.test.db4o;

import net.gumbix.dba.companydemo.db.DBAccess;
import net.gumbix.dba.companydemo.db4o.Db4oAccess;
import net.gumbix.dba.companydemo.domain.*;

import java.io.File;
import java.util.GregorianCalendar;

/**
 * @author Markus Gumbel (m.gumbel@hs-mannheim.de)
 */
public class ExampleData {

    public static void main(String[] args) throws Exception {
        new File("firmenwelt.db4o").delete();
        Db4oAccess access = new Db4oAccess();

        // Create some car types:
        Car touran = new Car("Touran", "VW");
        access.storeCar(touran);
        Car passat = new Car("Passat", "VW");
        access.storeCar(passat);
        Car sklasse = new Car("S-Klasse", "Mercedes");
        access.storeCar(sklasse);

        // Create some company cars:
        CompanyCar companyCar1234 = new CompanyCar("MA-MA 1234", touran);
        access.storeCompanyCar(companyCar1234);

        // Create some departments:
        Department management = new Department(1, "Management");
        access.storeDepartment(management);
        Department verwaltung = new Department(2, "Verwaltung");
        access.storeDepartment(verwaltung);
        Department einkauf = new Department(3, "Einkauf");
        access.storeDepartment(einkauf);
        Department verkauf = new Department(4, "Verkauf & Marketing");
        access.storeDepartment(verkauf);
        Department it = new Department(5, "IT");
        access.storeDepartment(it);
        Department entwicklung = new Department(6, "Forschung & Entwicklung");
        access.storeDepartment(entwicklung);
        Department produktion = new Department(7, "Produktion");
        access.storeDepartment(produktion);
        Department qualität = new Department(8, "Qualitätssicherung");
        access.storeDepartment(qualität);
        Department buchhaltung = new Department(9, "Buchhaltung");
        access.storeDepartment(buchhaltung);
        Department kundendienst = new Department(10, "Kundendienst");
        access.storeDepartment(kundendienst);

        // Create personnel:
        Employee employeeLohe = new Employee(1000, "Lohe", "Fransiska",
                new GregorianCalendar(1967, 12, 01),
                new Address("68113", "Mannheim"), "+49 621 12345-100");
        employeeLohe.setCar(companyCar1234);
        employeeLohe.setDepartment(management);
        employeeLohe.setPosition("Vorstands-Chefin");
        access.storePersonnel(employeeLohe);

        Employee employeeMüller = new Employee(1200, "Müller", "Walter",
                new GregorianCalendar(1949, 02, 11),
                new Address("68113", "Mannheim"), "+49 621 12345-200");
        // employeeLohe.setCar(companyCar1234);
        employeeMüller.setDepartment(produktion);
        employeeMüller.setBoss(employeeLohe);
        access.storePersonnel(employeeMüller);

        Worker workerKleinschmidt = new Worker(2001, "Kleinschmidt", "August",
                new GregorianCalendar(1955, 7, 23), new Address("69214", "Eppelheim"),
                "Platz 300a");
        workerKleinschmidt.setBoss(employeeMüller);
        workerKleinschmidt.setDepartment(produktion);
        workerKleinschmidt.setPosition("Nachfüller");
        access.storePersonnel(workerKleinschmidt);

        access.db.close();
        System.out.println("Beispieldaten erzeugt.");
    }
}
