/*
 * Created by JFormDesigner on Sun Jun 17 13:19:44 CST 2018
 */

package com.ui;

import com.service.WarehouseBusiness;
import com.ui.tools.MyComboBoxEditor;
import com.ui.tools.MyTable;

import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.*;
import javax.swing.table.DefaultTableModel;

/**
 * @author Shi
 */
public class AllotPanel extends JPanel implements ActionListener {
    private JScrollPane scrollPane1;
    private MyTable table;
    private JScrollPane scrollPane2;
    private JButton button;

    WarehouseBusiness wb=new WarehouseBusiness();
    String[] columnName={"参数","内容"};
    String[] values = new String[] { "1", "2", "3" };
    Object[][] titleName={{"调离仓库",null},{"调入仓库",null},{"材料编号",null},{"数量",null},{"单价",null},{"总价",null},
            {"材料名称",null},{"规格",null},{"类型",null},{"单位",null}};
    public AllotPanel() {
        initComponents();
    }

    private void initComponents() {
        scrollPane1 = new JScrollPane();
        table = new MyTable();
        scrollPane2 = new JScrollPane();
        button = new JButton();

        //======== this ========
        setLayout(null);

        //======== scrollPane1 ========
        {
            setInitTable();
            scrollPane1.setViewportView(table);
        }
        add(scrollPane1);
        scrollPane1.setBounds(0, 0, 300, 323);

        //======== scrollPane2 ========
        {
            scrollPane2.setViewportView(new Tree());
        }
        add(scrollPane2);
        scrollPane2.setBounds(300, 0, 300, 395);

        //---- button ----
        button.setText("提交");
        button.addActionListener(this);
        add(button);
        button.setBounds(105, 370, 85, 40);
    }
    private void setInitTable(){
        table.setModel(new DefaultTableModel(titleName,columnName));
        table.setComboCell(0,1,new MyComboBoxEditor(values));
        table.setRowHeight(30);
        table.putClientProperty("terminateEditOnFocusLost", Boolean.TRUE);
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        if(e.getSource().equals(button)){
            int res=wb.allotWarehouse((String)table.getValueAt(0,1),
                    (String)table.getValueAt(1,1),
                    (String)table.getValueAt(2,1),
                    (String)table.getValueAt(6,1),
                    Double.valueOf((String) table.getValueAt(3,1)).doubleValue(),
                    Double.valueOf((String) table.getValueAt(4,1)).doubleValue(),
                    Double.valueOf((String) table.getValueAt(5,1)).doubleValue()
                    );
            if(res==1){
                JOptionPane.showMessageDialog(null, "成功", "SUCCESS",JOptionPane.PLAIN_MESSAGE);
                for(int i=0;i<10;i++){
                    titleName[i][1]=null;
                }
                table.setModel(new DefaultTableModel(titleName,columnName));
            }
            else{
                JOptionPane.showMessageDialog(null, "失败", "ERROR",JOptionPane.ERROR_MESSAGE);
            }
        }
    }
}
