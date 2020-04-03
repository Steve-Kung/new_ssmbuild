package cn.stevekung.pojo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Book {
    private Long bookId;
    private String bookName;
    private Integer bookCounts;
    private String bookDetail;
    private Date gmtCreate;
    private Date gmtModify;
}
