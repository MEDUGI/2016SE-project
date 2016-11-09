package entity;

/**
 * Created by 李沅泽 on 2016/10/9.
 */
public class Book {
    private String ISBN;
    private String Title;
    private String AuthorID;
    private String PublishDate;
    private String Publisher;
    private String Price;

    public Book() {

    }

    public Book(String ISBN, String title, String authorID, String publishDate, String publisher, String price) {
        this.ISBN = ISBN;
        Title = title;
        AuthorID = authorID;
        PublishDate = publishDate;
        Publisher = publisher;
        Price = price;
    }

    public String getISBN() {

        return ISBN;
    }

    public void setISBN(String ISBN) {
        this.ISBN = ISBN;
    }

    public String getTitle() {
        return Title;
    }

    public void setTitle(String title) {
        Title = title;
    }

    public String getAuthorID() {
        return AuthorID;
    }

    public void setAuthorID(String authorID) {
        AuthorID = authorID;
    }

    public String getPublishDate() {
        return PublishDate;
    }

    public void setPublishDate(String publishDate) {
        PublishDate = publishDate;
    }

    public String getPublisher() {
        return Publisher;
    }

    public void setPublisher(String publisher) {
        Publisher = publisher;
    }

    public String getPrice() {
        return Price;
    }

    public void setPrice(String price) {
        Price = price;
    }
}
