package action.personalInfo;

import com.opensymphony.xwork2.ActionSupport;
import dao.ProfessorDAO;
import dao.StudentDAO;
import entity.Professor;
import entity.Student;
import org.apache.struts2.interceptor.SessionAware;

import java.util.ArrayList;
import java.util.Map;

/**
 * Created by Xiangxi on 2016/11/17.
 */
public class ChangeInformationAction extends ActionSupport implements SessionAware{
    protected String graduateSchool;                        // 50 characters at most
    protected String studentNo;                             // 20 characters at most
    protected String emailAddress;                          // 60 characters at most
    protected String awardsCollection;                      // 500 characters at most
    protected String gpa;
    protected String neepScore;
    protected String workingAreas;                          // 60 characters at most
    protected String mobileNo;                              // 30 characters at most
    protected String employerUnit;
    protected String identityCardNo;
    protected String workingArea;
    protected String papersPublished;
    protected String accomodationNumber;
    protected String fullname;
    protected String major;
    protected String introduction;
    protected String physicalAddress;
    protected String futureMajor1;
    protected String futureMajor2;
    Map session;
    String username = "";
    String userstyle;

    public ArrayList<String>[] workingAreasList = new ArrayList[4];

    public String[] majorList = {"null", "计算机科学与技术", "机电专业", "航天专业", "艺术学科"};

    public String[] getMajorList() {
        return majorList;
    }

    public void setMajorList(String[] majorList) {
        this.majorList = majorList;
    }

    public ArrayList<String>[] getWorkingAreasList() {
        return workingAreasList;
    }

    public void setWorkingAreasList(ArrayList<String>[] workingAreasList) {
        this.workingAreasList = workingAreasList;
    }

    public String getFutureMajor1() {
        return futureMajor1;
    }

    public void setFutureMajor1(String futureMajor1) {
        this.futureMajor1 = futureMajor1;
    }

    public String getFutureMajor2() {
        return futureMajor2;
    }

    public void setFutureMajor2(String futureMajor2) {
        this.futureMajor2 = futureMajor2;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    public String getPhysicalAddress() {
        return physicalAddress;
    }

    public void setPhysicalAddress(String physicalAddress) {
        this.physicalAddress = physicalAddress;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUserstyle() {
        return userstyle;
    }

    public void setUserstyle(String userstyle) {
        this.userstyle = userstyle;
    }

    public Map getSession() {
        return session;
    }

    public void setSession(Map session) {
        this.session = session;
    }

    public String getGpa() {
        return gpa;
    }

    public void setGpa(String gpa) {
        this.gpa = gpa;
    }

    public String getNeepScore() {
        return neepScore;
    }

    public void setNeepScore(String neepScore) {
        this.neepScore = neepScore;
    }

    public String getAccomodationNumber() {
        return accomodationNumber;
    }

    public void setAccomodationNumber(String accomodationNumber) {
        this.accomodationNumber = accomodationNumber;
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

    void generateWorkingAreaList() {

        workingAreasList[0] = new ArrayList<>();
        workingAreasList[0].add("模式识别");
        workingAreasList[0].add("云计算");
        workingAreasList[0].add("数据安全");
        workingAreasList[0].add("软件工程");
        workingAreasList[0].add("机器学习");
        workingAreasList[0].add("硬件维护");

        workingAreasList[1] = new ArrayList<>();
        workingAreasList[1].add("烧锅炉");
        workingAreasList[1].add("电器");

        workingAreasList[2] = new ArrayList<>();
        workingAreasList[2].add("航空");
        workingAreasList[2].add("航天");

        workingAreasList[3] = new ArrayList<>();
        workingAreasList[3].add("哲学");
        workingAreasList[3].add("美术");
        workingAreasList[3].add("音乐");
    }

    public String execute() {
        generateWorkingAreaList();
        username = (String)session.get("username");
        userstyle = (String)session.get("userstyle");
        if (userstyle.equals("Student")) {
            Student student = new Student(username, "");
            student.setGraduateSchool(graduateSchool);
            student.setStudentNo(studentNo);
            student.setGpa(Double.parseDouble(gpa));
            student.setNeepScore(Double.parseDouble(neepScore));
            student.setAwardsCollection(awardsCollection);
            student.setEmailAddress(emailAddress);
            int majorNo = Integer.parseInt(major);
            student.setMajor(majorList[majorNo]);
            String finalString="";
            if (majorNo != 0) {
                for(String workingAreaNumber : workingAreas.split(",")) {
                    if (workingAreaNumber.charAt(0) == ' ') workingAreaNumber = workingAreaNumber.substring(1);
                    finalString = finalString + ((workingAreasList[majorNo-1].get(Integer.parseInt(workingAreaNumber)))) + ",";
                }
            }
            student.setWorkingAreas(finalString.substring(0, finalString.length()-1));

            student.setFutureMajor1(majorList[Integer.parseInt(futureMajor1)]);
            student.setFutureMajor2(majorList[Integer.parseInt(futureMajor2)]);

            student.setMobileNo(mobileNo);
            student.setFullname(fullname);
            student.setIntroduction(introduction);
            student.setPhysicalAddress(physicalAddress);
            StudentDAO studentDAO = new StudentDAO();
            studentDAO.updateStudent(student);
            return SUCCESS;
        }
        if (userstyle.equals("Professor")) {
            Professor professor = new Professor(username, "");
            professor.setEmployerUnit(employerUnit);
            professor.setIdentityCardNo(identityCardNo);
            professor.setWorkingArea(workingArea);
            professor.setPapersPublished(papersPublished);
            professor.setAccomodationNumber(Integer.parseInt(accomodationNumber));
            professor.setEmailAddress(emailAddress);
            professor.setMobileNo(mobileNo);
            professor.setFullname(fullname);
            professor.setMajor(major);
            professor.setIntroduction(introduction);
            professor.setPhysicalAddress(physicalAddress);
            ProfessorDAO professorDAO = new ProfessorDAO();
            professorDAO.updateProfessor(professor);
            return SUCCESS;
        }
        return ERROR;
    }
}
