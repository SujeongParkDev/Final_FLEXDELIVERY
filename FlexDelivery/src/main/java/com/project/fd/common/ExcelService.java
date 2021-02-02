package com.project.fd.common;

import java.text.SimpleDateFormat;
import java.util.List;

import org.apache.poi.ss.usermodel.BorderStyle;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.FillPatternType;
import org.apache.poi.ss.usermodel.Font;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.IndexedColors;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.VerticalAlignment;
import org.apache.poi.xssf.streaming.SXSSFSheet;
import org.apache.poi.xssf.streaming.SXSSFWorkbook;
import org.apache.poi.xssf.usermodel.XSSFCellStyle;
import org.apache.poi.xssf.usermodel.XSSFColor;
import org.springframework.stereotype.Service;

import com.project.fd.admin.stores.model.AdminStoresVO;

@Service
public class ExcelService {
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일 HH:mm:ss");

    /**
     * 리스트를 간단한 엑셀 워크북 객체로 생성
     * @param list
     * @return 생성된 워크북
     */
    public SXSSFWorkbook makeExcelWorkbook(List<AdminStoresVO> list) {
        SXSSFWorkbook workbook = new SXSSFWorkbook();
        
        // 시트 생성
        SXSSFSheet sheet = workbook.createSheet("점포 승인 목록");
        
        
        //시트 열 너비 설정
        sheet.setColumnWidth(0, 4000);//점포등록신청번호
        sheet.setColumnWidth(1, 7000);//점포등록신청일
        sheet.setColumnWidth(2, 4000);//사업자등록번호
        sheet.setColumnWidth(3, 4000);//점포주명
        sheet.setColumnWidth(4, 4000);//점포명
        sheet.setColumnWidth(5, 4000);//주소
        sheet.setColumnWidth(6, 8000);//세부주소
        sheet.setColumnWidth(7, 2000);//hp1
        sheet.setColumnWidth(8, 2000);//hp2
        sheet.setColumnWidth(9, 2000);//hp3
        sheet.setColumnWidth(10, 4000);//관리자승인플래그
        

        //Cell Style
        CellStyle mergeRowStyle1 = workbook.createCellStyle();
        mergeRowStyle1.setAlignment(HorizontalAlignment.CENTER);
        mergeRowStyle1.setVerticalAlignment(VerticalAlignment.CENTER);
        mergeRowStyle1.setBorderTop(BorderStyle.THICK);
        mergeRowStyle1.setBorderLeft(BorderStyle.MEDIUM_DASH_DOT_DOT);
        mergeRowStyle1.setFillForegroundColor(IndexedColors.AQUA.getIndex());
        mergeRowStyle1.setFillPattern(FillPatternType.BRICKS);
        
        XSSFCellStyle mergeRowStyle2 = (XSSFCellStyle) workbook.createCellStyle();
        mergeRowStyle2.setAlignment(HorizontalAlignment.CENTER);
        mergeRowStyle2.setVerticalAlignment(VerticalAlignment.TOP);
        mergeRowStyle2.setBorderTop(BorderStyle.THIN);
        mergeRowStyle2.setBorderLeft(BorderStyle.DOTTED);
        mergeRowStyle2.setBorderBottom(BorderStyle.SLANTED_DASH_DOT);
        mergeRowStyle2.setBorderRight(BorderStyle.HAIR);
        mergeRowStyle2.setFillForegroundColor(new XSSFColor(new byte[] {(byte) 192,(byte) 192,(byte) 192}, null));
        mergeRowStyle2.setFillPattern(FillPatternType.FINE_DOTS);
        
        Font headerFont = workbook.createFont();
        headerFont.setFontName("나눔고딕");
        //headerFont.setFontHeight((short)1000);
        headerFont.setColor(IndexedColors.GREEN.getIndex());
        headerFont.setBold(true);
        
        CellStyle headerStyle = workbook.createCellStyle();
        headerStyle.setAlignment(HorizontalAlignment.CENTER);
        headerStyle.setVerticalAlignment(VerticalAlignment.BOTTOM);
        headerStyle.setBorderTop(BorderStyle.MEDIUM);
        headerStyle.setBorderLeft(BorderStyle.MEDIUM);
        headerStyle.setBorderBottom(BorderStyle.MEDIUM);
        headerStyle.setBorderRight(BorderStyle.MEDIUM);
        headerStyle.setFont(headerFont);
        
        
        CellStyle bodyStyle = workbook.createCellStyle();
        bodyStyle.setAlignment(HorizontalAlignment.CENTER);
        bodyStyle.setVerticalAlignment(VerticalAlignment.CENTER);
        bodyStyle.setBorderTop(BorderStyle.THIN);
        bodyStyle.setBorderBottom(BorderStyle.THIN);
        bodyStyle.setBorderLeft(BorderStyle.THIN);
        bodyStyle.setBorderRight(BorderStyle.THIN);
        
        
        
        // 헤더 행 생
        Row headerRow = sheet.createRow(0);
        // 해당 행의 첫번째 열 셀 생성
        Cell headerCell = headerRow.createCell(0);
        headerCell.setCellValue("신청번호");
        headerCell.setCellStyle(headerStyle);
        // 해당 행의 첫번째 열 셀 생성
        headerCell = headerRow.createCell(1);
        headerCell.setCellValue("신청일");
        headerCell.setCellStyle(headerStyle);
        
        // 해당 행의 두번째 열 셀 생성
        headerCell = headerRow.createCell(2);
        headerCell.setCellValue("사업자등록번호");
        headerCell.setCellStyle(headerStyle);
        // 해당 행의 세번째 열 셀 생성
        headerCell = headerRow.createCell(3);
        headerCell.setCellValue("대표명");
        headerCell.setCellStyle(headerStyle);
        // 해당 행의 네번째 열 셀 생성
        headerCell = headerRow.createCell(4);
        headerCell.setCellValue("점포명");
        headerCell.setCellStyle(headerStyle);
        // 해당 행의 다섯번째 열 셀 생성
        headerCell = headerRow.createCell(5);
        headerCell.setCellValue("주소");
        headerCell.setCellStyle(headerStyle);
        // 해당 행의 여섯번째 열 셀 생성
        headerCell = headerRow.createCell(6);
        headerCell.setCellValue("세부주소");
        headerCell.setCellStyle(headerStyle);
        // 해당 행의 일곱번째 열 셀 생성
        headerCell = headerRow.createCell(7);
        headerCell.setCellValue("hp1");
        headerCell.setCellStyle(headerStyle);
        // 해당 행의 여덞번째 열 셀 생성
        headerCell = headerRow.createCell(8);
        headerCell.setCellValue("hp2");
        headerCell.setCellStyle(headerStyle);
        // 해당 행의 아홉번째 열 셀 생성
        headerCell = headerRow.createCell(9);
        headerCell.setCellValue("hp3");
        headerCell.setCellStyle(headerStyle);
        // 해당 행의 열번째 열 셀 생성
        headerCell = headerRow.createCell(10);
        headerCell.setCellValue("승인플래그");
        headerCell.setCellStyle(headerStyle);
     // 해당 행의 열한번째 열 셀 생성
        
        // 표 내용 행 및 셀 생성
        Row bodyRow = null;
        Cell bodyCell = null;
        for(int i=0; i<list.size(); i++) {
           AdminStoresVO vo = list.get(i);
           
           	bodyRow = sheet.createRow(i+1);
           	
            bodyCell = bodyRow.createCell(0);
            bodyCell.setCellValue(vo.getStoreNo());
            bodyCell.setCellStyle(bodyStyle);
            // 해당 행의 첫번째 열 셀 생성
            bodyCell = bodyRow.createCell(1);            
            bodyCell.setCellValue(sdf.format(vo.getStoreRegdate()));
            bodyCell.setCellStyle(bodyStyle);
            // 해당 행의 두번째 열 셀 생성
            bodyCell = bodyRow.createCell(2);
            bodyCell.setCellValue(vo.getoRegisterNo());
            bodyCell.setCellStyle(bodyStyle);
            // 해당 행의 세번째 열 셀 생성
            bodyCell = bodyRow.createCell(3);
            bodyCell.setCellValue(vo.getOwnerName());
            bodyCell.setCellStyle(bodyStyle);
            // 해당 행의 네번째 열 셀 생성
            bodyCell = bodyRow.createCell(4);
            bodyCell.setCellValue(vo.getStoreName());
            bodyCell.setCellStyle(bodyStyle);
            // 해당 행의 다섯번째 열 셀 생성
            bodyCell = bodyRow.createCell(5);
            bodyCell.setCellValue(vo.getStoreAddress());
            bodyCell.setCellStyle(bodyStyle);
            // 해당 행의 여섯번째 열 셀 생성
            bodyCell = bodyRow.createCell(6);
            bodyCell.setCellValue(vo.getStoreAddressDetail());
            bodyCell.setCellStyle(bodyStyle);
            // 해당 행의 일곱번째 열 셀 생성
            bodyCell = bodyRow.createCell(7);
            bodyCell.setCellValue(vo.getOwnerHp1());
            bodyCell.setCellStyle(bodyStyle);
            // 해당 행의 여덞번째 열 셀 생성
            bodyCell = bodyRow.createCell(8);
            bodyCell.setCellValue(vo.getOwnerHp2());
            bodyCell.setCellStyle(bodyStyle);
            // 해당 행의 아홉번째 열 셀 생성
            bodyCell = bodyRow.createCell(9);
            bodyCell.setCellValue(vo.getOwnerHp3());
            bodyCell.setCellStyle(bodyStyle);
            // 해당 행의 열번째 열 셀 생성
            bodyCell = bodyRow.createCell(10);
            bodyCell.setCellValue(vo.getaAgreeNo());
            bodyCell.setCellStyle(bodyStyle);
        }//for
        
        
        return workbook;
    }
    
    /**
     * 생성한 엑셀 워크북을 컨트롤레에서 받게해줄 메소드
     * @param list
     * @return
     */
    public SXSSFWorkbook excelFileDownloadProcess(List<AdminStoresVO> list) {
        return this.makeExcelWorkbook(list);
    }

}
