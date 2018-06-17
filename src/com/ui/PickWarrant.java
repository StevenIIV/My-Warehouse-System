package com.ui;

import com.service.WarehouseBusiness;
import com.service.WarrantFun;
import com.ui.tools.MyComboBoxEditor;
import com.ui.tools.MyTable;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.swing.*;
import javax.swing.table.DefaultTableModel;

public class PickWarrant extends JPanel implements ActionListener{
    private JPanel mainContent;
    private JScrollPane scrollPane1;
    private MyTable table;
    private JScrollPane scrollPane2;
    private JPanel actionBar;
    private JButton button1;
    private JButton button2;
    private JButton button3;
    private JButton button4;
    private JButton button5;
    private JButton button6;
    private JLabel number;

    private int pos=0;//当前表的位置
    private int maxpage=0;//当前表的大小
    private int bt_fun=0;//是否在+或-的状态 /* + =1 - =-1 */
    private List goods=new ArrayList();
    WarrantFun sw=new WarrantFun();
    WarehouseBusiness wb=new WarehouseBusiness();
    String[] columnName={"参数","内容"};
    Object[][] titleName={{"仓库名",null},{"货物编号",null},{"数量",null},{"单价",null},{"总价",null},{"授权编码",null},
            {"事务类型",null},{"时间",null},{"货物名",null},{"规范",null},{"种类",null},{"单位",null},{"供应商",null},{"监察员",null},
            {"管理员",null},{"查账员",null},{"注释",null},{"车间",null},{"用户商品",null},{"使用目的",null}};
    public PickWarrant(){
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
        button3 = new JButton();
        button4 = new JButton();
        button5 = new JButton();
        button6 = new JButton();
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
            goods= sw.selectPickWarrant();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        if(goods.isEmpty()){
            JOptionPane.showMessageDialog(null, "领料单数据缺失", "ERROR!",JOptionPane.ERROR_MESSAGE);
            System.exit(1);
        }
        maxpage=goods.size();
        for(int i=0;i<20;i++){
            titleName[i][1]=((Object[])goods.get(0))[i];
        }
        table.setModel(new DefaultTableModel(titleName,columnName));
        table.setRowHeight(30);
        table.putClientProperty("terminateEditOnFocusLost", Boolean.TRUE);
    }

    //刷新table内容
    public void refreshTable(){
        for(int i=0;i<20;i++){
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

        //---- button3 ----
        button3.setText("+");
        actionBar.add(button3);
        button3.setBounds(185, 0, 45, 40);
        button3.addActionListener(this);

        //---- button4 ----
        button4.setText("-");
        actionBar.add(button4);
        button4.setBounds(245, 0, 45, 40);
        button4.addActionListener(this);

        //---- button5 ----
        button5.setText("submit");
        actionBar.add(button5);
        button5.setBounds(325, 0, 75, 40);
        button5.addActionListener(this);

        //---- button6 ----
        button6.setText("打印");
        actionBar.add(button6);
        button6.setBounds(440, 0, 85, 40);

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
        //---- 入库 ----
        else if(e.getSource().equals(button3)){
            bt_fun=1;
            for(int i=0;i<20;i++){
                titleName[i][1]=null;
            }
            table.setModel(new DefaultTableModel(titleName,columnName));
            String[] values = new String[] { "1", "2", "3" };
            table.setComboCell(0,1,new MyComboBoxEditor(values));
        }
        //---- 出库 ----
        else if(e.getSource().equals(button4)){
            bt_fun=-1;
            for(int i=0;i<20;i++){
                titleName[i][1]=null;
            }
            table.setModel(new DefaultTableModel(titleName,columnName));
            String[] values = new String[] { "1", "2", "3" };
            table.setComboCell(0,1,new MyComboBoxEditor(values));
        }
        //---- 提交 ----
        else if(e.getSource().equals(button5)){
            if(bt_fun==1){
                int res=0;
                res=wb.pickArticle((String)table.getValueAt(1,1),
                        Double.valueOf((String) table.getValueAt(2,1)).doubleValue(),
                        Double.valueOf((String) table.getValueAt(3,1)).doubleValue(),
                        Double.valueOf((String) table.getValueAt(4,1)).doubleValue(),
                        (String) table.getValueAt(0,1),
                        (String) table.getValueAt(6,1),
                        (String) table.getValueAt(8,1),
                        (String) table.getValueAt(9,1),
                        (String) table.getValueAt(10,1),
                        (String) table.getValueAt(11,1),
                        (String) table.getValueAt(12,1),
                        (String) table.getValueAt(13,1),
                        (String) table.getValueAt(14,1),
                        (String) table.getValueAt(15,1),
                        (String) table.getValueAt(16,1),
                        (String) table.getValueAt(17,1),
                        (String) table.getValueAt(18,1),
                        (String) table.getValueAt(19,1)
                );
                if(res==1){
                    JOptionPane.showMessageDialog(null, "成功", "SUCCESS",JOptionPane.PLAIN_MESSAGE);
                    try {
                        goods= sw.selectPickWarrant();
                    } catch (SQLException e1) {
                        e1.printStackTrace();
                    }
                    maxpage=goods.size();
                    refreshTable();
                    bt_fun=0;
                }
                else{
                    JOptionPane.showMessageDialog(null, "失败", "ERROR",JOptionPane.ERROR_MESSAGE);
                }
            }
            else if(bt_fun==-1){
                int res=0;
                res=wb.returnArticle((String)table.getValueAt(1,1),
                        Double.valueOf((String) table.getValueAt(2,1)).doubleValue(),
                        Double.valueOf((String) table.getValueAt(3,1)).doubleValue(),
                        Double.valueOf((String) table.getValueAt(4,1)).doubleValue(),
                        (String) table.getValueAt(0,1),
                        (String) table.getValueAt(6,1),
                        (String) table.getValueAt(8,1),
                        (String) table.getValueAt(9,1),
                        (String) table.getValueAt(10,1),
                        (String) table.getValueAt(11,1),
                        (String) table.getValueAt(12,1),
                        (String) table.getValueAt(13,1),
                        (String) table.getValueAt(14,1),
                        (String) table.getValueAt(15,1),
                        (String) table.getValueAt(16,1),
                        (String) table.getValueAt(17,1),
                        (String) table.getValueAt(18,1),
                        (String) table.getValueAt(19,1)
                );
                if(res==1){
                    JOptionPane.showMessageDialog(null, "成功", "SUCCESS",JOptionPane.PLAIN_MESSAGE);
                    try {
                        goods= sw.selectPickWarrant();
                    } catch (SQLException e1) {
                        e1.printStackTrace();
                    }
                    maxpage=goods.size();
                    refreshTable();
                    bt_fun=0;
                }
                else{
                    JOptionPane.showMessageDialog(null, "失败", "ERROR",JOptionPane.ERROR_MESSAGE);
                }
            }
        }
        //---- 打印 ----
        else if(e.getSource().equals(button6)){

        }
    }

}