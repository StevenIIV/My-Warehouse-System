/*
 * Created by JFormDesigner on Tue Jun 05 22:41:12 CST 2018
 */

package com.ui;

import com.service.WarehouseBusiness;
import com.service.WarrantFun;
import com.ui.tools.MyComboBoxEditor;
import com.ui.tools.MyTable;

import javax.swing.*;
import javax.swing.table.DefaultTableModel;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class GeneralWarehouse extends JPanel implements ActionListener{
    private JPanel mainContent;
    private JScrollPane scrollPane1;
    private MyTable table;
    private JScrollPane scrollPane2;
    private JPanel actionBar;
    private JButton button1;
    private JButton button2;
    private JLabel number;

    private int pos=0;//当前表的位置
    private int maxpage=0;//当前表的大小
    private List goods=new ArrayList();
    WarrantFun sw=new WarrantFun();
    String[] columnName={"参数","内容"};
    Object[][] titleName={{"货物编号",null},{"货物名",null},{"数量",null},{"单价",null},{"总价",null}};
    public GeneralWarehouse(){
        initComponents();
    }

    private void initComponents() {
        mainContent = new JPanel();
        scrollPane1 = new JScrollPane();
        table = new MyTable();
        scrollPane2 = new JScrollPane();
        actionBar = new JPanel();
        button1 = new JButton();
        button2 = new JButton();
        number = new JLabel();

        //======== this ========
        setLayout(null);

        //======== mainContent ========
        {
            mainContent.setLayout(null);

            //======== scrollPane1 ========
            {
                //---- table ----
                setInitTable();
                scrollPane1.setViewportView(table);
            }
            mainContent.add(scrollPane1);
            scrollPane1.setBounds(0, 0, 300, 395);

            //======== scrollPane2 ========
            {
                scrollPane2.setViewportView(new Tree());
            }
            mainContent.add(scrollPane2);
            scrollPane2.setBounds(300, 0, 300, 395);

            //======== actionBar ========
            setActionBar();

            mainContent.add(actionBar);
            actionBar.setBounds(0, 395, 600, 40);

        }
        add(mainContent);
        mainContent.setBounds(0, 0, 600, 435);

    }

    //初始化table的值
    public void setInitTable(){
        try {
            goods= sw.selectGeneralWarehouse();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        if(goods.isEmpty()){
            JOptionPane.showMessageDialog(null, "总仓数据缺失", "ERROR!",JOptionPane.ERROR_MESSAGE);
            System.exit(1);
        }
        maxpage=goods.size();
        for(int i=0;i<5;i++){
            titleName[i][1]=((Object[])goods.get(0))[i];
        }
        table.setModel(new DefaultTableModel(titleName,columnName));
        table.setRowHeight(30);
        table.putClientProperty("terminateEditOnFocusLost", Boolean.TRUE);
    }

    //刷新table内容
    public void refreshTable(){
        for(int i=0;i<5;i++){
            titleName[i][1]=((Object[])goods.get(pos))[i];
        }
        table.setModel(new DefaultTableModel(titleName,columnName));
        number.setText("<html><font color='red'>"+String.valueOf(pos+1)+"/"+String.valueOf(maxpage)+"</font></html>");
    }

    //初始化actionbar
    public void setActionBar(){
        actionBar.setLayout(null);

        button1.setText("last");
        actionBar.add(button1);
        button1.setBounds(0, 0, 60, 40);
        button1.addActionListener(this);

        //---- button2 ----
        button2.setText("next");
        actionBar.add(button2);
        button2.setBounds(115, 0, 60, 40);
        button2.addActionListener(this);

        //---- label1 ----
        number.setText("<html><font color='red'>"+String.valueOf(pos+1)+"/"+String.valueOf(maxpage)+"</font></html>");
        number.setHorizontalTextPosition(SwingConstants.CENTER);
        number.setHorizontalAlignment(SwingConstants.CENTER);
        actionBar.add(number);
        number.setBounds(55, 5, 60, 30);
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        //----- 向前 -----
        if(e.getSource().equals(button1)){
            if(maxpage==1) pos=0;
            else pos=(pos-1+maxpage)%maxpage;
            refreshTable();
        }
        //----- 向后 -----
        else if(e.getSource().equals(button2)){
            if(maxpage==1) pos=0;
            else pos=(pos+1+maxpage)%maxpage;
            refreshTable();
        }
    }

}
