/*
 * Created by JFormDesigner on Sat Jun 02 15:07:00 CST 2018
 */
package com.ui;
import java.awt.*;
import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import javax.imageio.ImageIO;
import javax.swing.*;
/**
 * @author Shi Steven
 */
public class MainFrame extends JFrame {
    private JTabbedPane tabbedPane1;
    public MainFrame(){
        initComponents();
        try {
            Image imgae = ImageIO.read(new File("image/logo.png"));
            this.setIconImage(imgae);
        } catch (IOException e) {
            e.printStackTrace();
        }
        setTitle("仓库管理系统");
        setVisible(true);
        setBounds(0,0,600,515);
        setLocationRelativeTo(null);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    }

    private void initComponents(){
        tabbedPane1 = new JTabbedPane();
        Container contentPane = getContentPane();
        contentPane.setLayout(null);

        tabbedPane1.addTab("入库单", new EntryWarrant());
        tabbedPane1.addTab("出库单",new ExitWarrant());
        tabbedPane1.addTab("领料单",new PickWarrant());
        tabbedPane1.addTab("退料单",new ReturnWarrant());
        tabbedPane1.addTab("本仓",new DistributeWarehouse());
        tabbedPane1.addTab("总仓",new GeneralWarehouse());
        tabbedPane1.addTab("调拨",new AllotPanel());

        contentPane.add(tabbedPane1);
        tabbedPane1.setBounds(0, 0, 600, 485);
        pack();
        setLocationRelativeTo(getOwner());
    }
}
