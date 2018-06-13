package com.ui.tools;

import javax.swing.*;
import javax.swing.table.TableCellEditor;

public class MyTable extends JTable {
    int myRow=-1,myCol=-1;
    TableCellEditor myEditor;
    public void setComboCell(int r,int c,TableCellEditor ce){
        this.myRow=r;
        this.myCol=c;
        this.myEditor=ce;
    }

    @Override
    public TableCellEditor getCellEditor(int row, int column) {
        System.out.println(row+","+column+";"+myRow+","+myCol+","+myEditor);
        if(row==myRow&&column==myCol&&myEditor!=null)
            return myEditor;
        return super.getCellEditor(row, column);
    }

}