package entity;


/**
 * Created by Xiangxi on 2016/11/14.
 */
public class Professor extends User{
    public Professor(String username, String password) {
        super(username, password);
    }
    protected String employerUnit;
    protected String identityCardNo;
    protected String workingArea;
    protected String papersPublished;
    protected int accomodationNumber;

    public String getEmployerUnit() {
        return employerUnit;
    }

    public void setEmployerUnit(String employerUnit) {
        this.employerUnit = employerUnit;
    }

    public String getIdentityCardNo() {
        return identityCardNo;
    }

    public void setIdentityCardNo(String identityCardNo) {
        this.identityCardNo = identityCardNo;
    }

    public String getWorkingArea() {
        return workingArea;
    }

    public void setWorkingArea(String workingArea) {
        this.workingArea = workingArea;
    }

    public String getPapersPublished() {
        return papersPublished;
    }

    public void setPapersPublished(String papersPublished) {
        this.papersPublished = papersPublished;
    }

    public int getAccomodationNumber() {
        return accomodationNumber;
    }

    public void setAccomodationNumber(int accomodationNumber) {
        this.accomodationNumber = accomodationNumber;
    }
}
