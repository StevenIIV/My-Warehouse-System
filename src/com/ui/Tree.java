/*
 * Created by JFormDesigner on Wed Jun 13 15:16:36 CST 2018
 */

package com.ui;

import com.service.WarrantFun;
import com.sun.org.glassfish.external.statistics.annotations.Reset;

import java.awt.*;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.*;
import javax.swing.tree.DefaultMutableTreeNode;
import javax.swing.tree.TreeModel;

/**
 * @author Shi
 */
public class Tree extends JPanel {
    private JScrollPane scrollPane;
    private JTree tree;
    public Tree(){
        initComponents();
    }

    private void initComponents() {
        scrollPane = new JScrollPane();
        setLayout(null);
        try {
            scrollPane.setViewportView(setTree());
        } catch (SQLException e) {
            e.printStackTrace();
        }
        add(scrollPane);
        scrollPane.setBounds(0, 0, 300, 395);
    }
    public JTree setTree() throws SQLException {
        ResultSet rs=new WarrantFun().selectGeneralWarehouseInOrder();
        DefaultMutableTreeNode[] aNode=new DefaultMutableTreeNode[7];
        String line ="";
        int dotCount=0;
        while(rs.next())         //显示所有记录
        {
            line=rs.getString("article_number");

            dotCount=line.length()/2;
            if (dotCount==0)
                aNode[0]=new DefaultMutableTreeNode(rs.getString("article_number")+":"+rs.getString("article_name"));
            else
            {
                aNode[dotCount]=new DefaultMutableTreeNode(rs.getString("article_number")+":"+rs.getString("article_name"));
                aNode[dotCount-1].add(aNode[dotCount]);
            }
        }
        JTree tree = new JTree(aNode[0]) {
            public Insets getInsets() {
                return new Insets(5,5,5,5);
            }
        };

        tree.setEditable(true);
        return(tree);
    }
}
