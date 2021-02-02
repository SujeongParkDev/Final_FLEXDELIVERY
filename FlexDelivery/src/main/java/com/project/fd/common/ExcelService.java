package com.project.fd.common;

import java.util.List;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.streaming.SXSSFSheet;
import org.apache.poi.xssf.streaming.SXSSFWorkbook;
import org.springframework.stereotype.Service;

import com.project.fd.admin.stores.model.AdminStoresVO;

@Service
public class ExcelService {

    /**
     * 과일 리스트를 간단한 엑셀 워크북 객체로 생성
     * @param list
     * @return 생성된 워크북
     */
    public SXSSFWorkbook makeExcelWorkbook(List<AdminStoresVO> list) {
        SXSSFWorkbook workbook = new SXSSFWorkbook();
        
        // 시트 생성
        SXSSFSheet sheet = workbook.createSheet("점포 승인 목록");
        
        //시트 열 너비 설정
        sheet.setColumnWidth(0, 4000);//점포등록신청번호
        sheet.setColumnWidth(1, 4000);//점포등록신청일
        sheet.setColumnWidth(2, 4000);//사업자등록번호
        sheet.setColumnWidth(3, 4000);//점포주명
        sheet.setColumnWidth(4, 4000);//점포명
        sheet.setColumnWidth(5, 4000);//주소
        sheet.setColumnWidth(6, 8000);//세부주소
        sheet.setColumnWidth(7, 2000);//hp1
        sheet.setColumnWidth(8, 2000);//hp2
        sheet.setColumnWidth(9, 2000);//hp3
        sheet.setColumnWidth(10, 4000);//관리자승인플래그
        
        
        
        // 헤더 행 생
        Row headerRow = sheet.createRow(0);
        // 해당 행의 첫번째 열 셀 생성
        Cell headerCell = headerRow.createCell(0);
        headerCell.setCellValue("신청번호");
        // 해당 행의 첫번째 열 셀 생성
        headerCell = headerRow.createCell(1);
        headerCell.setCellValue("신청일");
        // 해당 행의 두번째 열 셀 생성
        headerCell = headerRow.createCell(2);
        headerCell.setCellValue("사업자등록번호");
        // 해당 행의 세번째 열 셀 생성
        headerCell = headerRow.createCell(3);
        headerCell.setCellValue("대표명");
        // 해당 행의 네번째 열 셀 생성
        headerCell = headerRow.createCell(4);
        headerCell.setCellValue("점포명");
        // 해당 행의 다섯번째 열 셀 생성
        headerCell = headerRow.createCell(5);
        headerCell.setCellValue("주소");
        // 해당 행의 여섯번째 열 셀 생성
        headerCell = headerRow.createCell(6);
        headerCell.setCellValue("세부주소");
        // 해당 행의 일곱번째 열 셀 생성
        headerCell = headerRow.createCell(7);
        headerCell.setCellValue("hp1");
        // 해당 행의 여덞번째 열 셀 생성
        headerCell = headerRow.createCell(8);
        headerCell.setCellValue("hp2");
        // 해당 행의 아홉번째 열 셀 생성
        headerCell = headerRow.createCell(9);
        headerCell.setCellValue("hp3");
        // 해당 행의 열번째 열 셀 생성
        headerCell = headerRow.createCell(10);
        headerCell.setCellValue("승인플래그");
     // 해당 행의 열한번째 열 셀 생성
        
        // 표 내용 행 및 셀 생성
        Row bodyRow = null;
        Cell bodyCell = null;
        for(int i=0; i<list.size(); i++) {
           AdminStoresVO vo = list.get(i);
           
           	bodyRow = sheet.createRow(i+1);
           	
            bodyCell = bodyRow.createCell(0);
            bodyCell.setCellValue(vo.getStoreNo());
            // 해당 행의 첫번째 열 셀 생성
            bodyCell = bodyRow.createCell(1);
            bodyCell.setCellValue(vo.getStoreRegdate());
            // 해당 행의 두번째 열 셀 생성
            bodyCell = bodyRow.createCell(2);
            bodyCell.setCellValue(vo.getoRegisterNo());
            // 해당 행의 세번째 열 셀 생성
            bodyCell = bodyRow.createCell(3);
            bodyCell.setCellValue(vo.getOwnerName());
            // 해당 행의 네번째 열 셀 생성
            bodyCell = bodyRow.createCell(4);
            bodyCell.setCellValue(vo.getStoreName());
            // 해당 행의 다섯번째 열 셀 생성
            bodyCell = bodyRow.createCell(5);
            bodyCell.setCellValue(vo.getStoreAddress());
            // 해당 행의 여섯번째 열 셀 생성
            bodyCell = bodyRow.createCell(6);
            bodyCell.setCellValue(vo.getStoreAddressDetail());
            // 해당 행의 일곱번째 열 셀 생성
            bodyCell = bodyRow.createCell(7);
            bodyCell.setCellValue(vo.getOwnerHp1());
            // 해당 행의 여덞번째 열 셀 생성
            bodyCell = bodyRow.createCell(8);
            bodyCell.setCellValue(vo.getOwnerHp2());
            // 해당 행의 아홉번째 열 셀 생성
            bodyCell = bodyRow.createCell(9);
            bodyCell.setCellValue(vo.getOwnerHp3());
            // 해당 행의 열번째 열 셀 생성
            bodyCell = bodyRow.createCell(10);
            bodyCell.setCellValue(vo.getaAgreeNo());
        }
        
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
