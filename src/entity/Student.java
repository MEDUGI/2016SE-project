package entity;

/**
 * Created by Xiangxi on 2016/11/14.
 */
public class Student extends User{
    public Student(String username, String password) {
        super(username, password);
    }
    protected String graduateSchool;                        // 50 characters at most
    protected String studentNo;                             // 20 characters at most
    protected String emailAddress;                          // 60 characters at most
    protected String awardsCollection;                      // 500 characters at most
    protected double gpa;
    protected double neepScore;
    protected String workingAreas;                          // 60 characters at most
    protected String mobileNo;                              // 30 characters at most

    public String getWorkingAreas() {
        return workingAreas;
    }

    public void setWorkingAreas(String workingAreas) {
        this.workingAreas = workingAreas;
    }

    public String getMobileNo() {
        return mobileNo;
    }

    public void setMobileNo(String mobileNo) {
        this.mobileNo = mobileNo;
    }

    public String getGraduateSchool() {
        return graduateSchool;
    }

    public void setGraduateSchool(String graduateSchool) {
        this.graduateSchool = graduateSchool;
    }

    public String getStudentNo() {
        return studentNo;
    }

    public void setStudentNo(String studentNo) {
        this.studentNo = studentNo;
    }

    public String getEmailAddress() {
        return emailAddress;
    }

    public void setEmailAddress(String emailAddress) {
        this.emailAddress = emailAddress;
    }

    public String getAwardsCollection() {
        return awardsCollection;
    }

    public void setAwardsCollection(String awardsCollection) {
        this.awardsCollection = awardsCollection;
    }

    public double getGpa() {
        return gpa;
    }

    public void setGpa(double gpa) {
        this.gpa = gpa;
    }

    public double getNeepScore() {
        return neepScore;
    }

    public void setNeepScore(double neepScore) {
        this.neepScore = neepScore;
    }
}
